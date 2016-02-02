#include "Mpu6050.h"

using namespace digitalcave;

Mpu6050::Mpu6050(){
	twi_init();
	uint8_t data[2];
	data[0] = MPU6050_PWR_MGMT_1;
	data[1] = 0x00;
	twi_write_to(MPU6050_ADDRESS, data, 2, TWI_BLOCK, TWI_STOP);	//Disable sleep (required at startup)
		
	//Init calibration data to 0
	accelCalib[0] = 0;
	accelCalib[1] = 0;
	accelCalib[2] = 0;
	
	gyroCalib[0] = 0;
	gyroCalib[1] = 0;
	gyroCalib[2] = 0;
	
	_delay_ms(500);
}

void Mpu6050::calibrate(){
	uint32_t totals[6] = {0, 0, 0, 0, 0, 0};
	const uint8_t count = 16;
	for (uint8_t i = 0; i < count; i++){
		uint8_t data[14];
		data[0] = MPU6050_ACCEL_XOUT_H;
		twi_write_to(MPU6050_ADDRESS, data, 1, TWI_BLOCK, TWI_STOP);	//Go to register MPU6050_ACCEL_XOUT_H
		twi_read_from(MPU6050_ADDRESS, data, 14, TWI_STOP);				//Read 14 bytes (Accel X/Y/Z, temp, Gyro X/Y/Z, 16 bits signed each)
	
		totals[0] += (data[0] << 8) | data[1];
		totals[1] += (data[2] << 8) | data[3];
		totals[2] += (data[4] << 8) | data[5];
		totals[3] += (data[8] << 8) | data[9];
		totals[4] += (data[10] << 8) | data[11];
		totals[5] += (data[12] << 8) | data[13];
		
		_delay_ms(100);
	}
	
	//We want Accel Z (index 2) to be 1g, and all else to be 0.
	accelCalib[0] = 0 - totals[0] / count;
	accelCalib[1] = 0 - totals[1] / count;
	accelCalib[2] = 16384 - totals[2] / count;
	gyroCalib[0] = 0 - totals[3] / count;
	gyroCalib[1] = 0 - totals[4] / count;
	gyroCalib[2] = 0 - totals[5] / count;
}

vector_t Mpu6050::getAccel(){
	uint8_t data[14];
	data[0] = MPU6050_ACCEL_XOUT_H;
	twi_write_to(MPU6050_ADDRESS, data, 1, TWI_BLOCK, TWI_STOP);	//Go to register MPU6050_ACCEL_XOUT_H
	twi_read_from(MPU6050_ADDRESS, data, 6, TWI_STOP);				//Read 6 bytes (Accel X/Y/Z, 16 bits signed each)
	
	vector_t result;
	result.x = (((data[0] << 8) | data[1]) + accelCalib[0]) * 0.00006103515625;		// 2g / 32678
	result.y = (((data[2] << 8) | data[3]) + accelCalib[1]) * 0.00006103515625;
	result.z = (((data[4] << 8) | data[5]) + accelCalib[2]) * 0.00006103515625;
	return result;
}

vector_t Mpu6050::getGyro(){
	uint8_t data[6];
	data[0] = MPU6050_GYRO_XOUT_H;
	twi_write_to(MPU6050_ADDRESS, data, 1, TWI_BLOCK, TWI_STOP);	//Go to register MPU6050_ACCEL_XOUT_H
	twi_read_from(MPU6050_ADDRESS, data, 6, TWI_STOP);				//Read 6 bytes (Gyro X/Y/Z, 16 bits signed each)
	
	vector_t result;
	result.x = (((data[0] << 8) | data[1]) + gyroCalib[0]) * 0.00762939453125 * M_PI / 180;		//(250 deg/s / 32768) * PI/180
	result.y = (((data[2] << 8) | data[3]) + gyroCalib[1]) * 0.00762939453125 * M_PI / 180;
	result.z = (((data[4] << 8) | data[5]) + gyroCalib[2]) * 0.00762939453125 * M_PI / 180;
	return result;
}

double Mpu6050::getTemperature(){
	uint8_t data[2];
	data[0] = MPU6050_TEMP_OUT_H;
	twi_write_to(MPU6050_ADDRESS, data, 1, TWI_BLOCK, TWI_STOP);	//Go to register MPU6050_ACCEL_XOUT_H
	twi_read_from(MPU6050_ADDRESS, data, 2, TWI_STOP);				//Read 2 bytes (16 bit raw temperature data)
	
	return ((int16_t) (data[0] << 8) | data[1]) / 340.00 + 36.53;	//equation for temperature in degrees C from datasheet
}

int16_t* Mpu6050::getAccelCalib(){
	return accelCalib;
}
void Mpu6050::setAccelCalib(int16_t* calibration){
	accelCalib[0] = calibration[0];
	accelCalib[1] = calibration[1];
	accelCalib[2] = calibration[2];
}
int16_t* Mpu6050::getGyroCalib(){
	return gyroCalib;
}
void Mpu6050::setGyroCalib(int16_t* calibration){
	gyroCalib[0] = calibration[0];
	gyroCalib[1] = calibration[1];
	gyroCalib[2] = calibration[2];
}


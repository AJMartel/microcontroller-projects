#include "manchester.h"
#define __DELAY_BACKWARD_COMPATIBLE__ 
#include <util/delay.h>

static volatile uint8_t *_port;
static volatile uint8_t *_ddr;
static uint8_t _pin;

static uint16_t half_clock;

void manchester_init_tx(volatile uint8_t *port, uint8_t pin, uint16_t baud){
	_port = port;
	_pin = pin;
	_ddr = port - 0x1;
	*_ddr |= _BV(pin);	//Enable output on selected pin
	
	half_clock = 1000000 / baud;
}

void write_bit(uint8_t bit){
	if (bit) *_port &= ~_BV(_pin);
	else *_port |= _BV(_pin);
	
	_delay_us(half_clock);
	
	if (bit) *_port |= _BV(_pin);
	else *_port &= ~_BV(_pin);

	_delay_us(half_clock);
}

void write_byte(uint8_t data) {
	for (uint8_t bit_count = 0; bit_count < 8; bit_count++){
		uint8_t bit = (data & _BV(bit_count));
		write_bit(bit);
	}
}
void write_escaped(uint8_t b) {
	if (b == 0xfe || b == 0x7d) {
		write_byte(0x7d);
		write_byte(b ^ 0x20);
	} else {
		write_byte(b);
	}
}

void manchester_write(uint8_t *data, uint8_t length) {
	*_port |= _BV(_pin);
	// two byte preamble
	write_byte(0xff);
	write_byte(0xfe);
	write_escaped(length);
	
	uint8_t checksum = 0x00;
	for (uint8_t i = 0; i < length; i++) {
		uint8_t b = data[i];
		write_escaped(b);
		checksum += b;
	}
	write_escaped(0xFF - checksum);
	*_port &= ~_BV(_pin);
}
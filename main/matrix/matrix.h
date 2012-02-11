#ifndef MATRIX_H
#define MATRIX_H

#include <stdint.h>

// /*
//  * A convenience buffer for an empty matrix;
//  */
// uint8_t MATRIX_BLANK[8] = {
// 	0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0
// };

/*
 * Initializes the library to use the specified ports and pins for data out, clock, and latch.
 * You need to pass the ports by reference - e.g. shift_init(&PORTC, PORTC0, &PORTC, PORTC1, &PORTC, PORTC2).
 */
void matrix_init(
		volatile uint8_t *data_port, uint8_t data_pin, 
		volatile uint8_t *clock_port, uint8_t clock_pin, 
		volatile uint8_t *latch_port, uint8_t latch_pin);
		
/*
 * Draws a byte[] framebuffer onto 8x8 matrix.  The framebuffer must be at least 8-bytes long.
 */
void matrix_draw(uint8_t red[], uint8_t green[]);

#endif

#include "timer.h"

unsigned long long _timer_millis;
unsigned long _timer_count;
unsigned long _timer_count_overflow;

/*
 * Initializes the timer, and resets the timer count to 0.  Sets up the ISRs 
 * linked with timer0.
 */
void timer_init(){
	//Set up the timer to run at F_CPU / 8
	TCCR0B |= (1 << CS01);
	
	//Enable Overflow Interrupt Enable
	TIMSK0 |= (1 << TOIE0);

	//Reset count variables
	_timer_millis = 0l;
	_timer_count = 0l;
	
	//Enable interrupts
	sei();

	//Calculate the point at which _timer_count overflows, based on CPU speed.
	// The 8 comes from the 8x prescaler.  The 256 comes from the 8 bit timer 
	// register; it overflows every F_CPU / 256 cycles.  The 1000 comes from 
	// milliseconds; F_CPU is in Hz, so F_CPU / 1000 is cycles / millisecond.
	_timer_count_overflow = F_CPU / 8 / 256 / 1000;
}

/*
 * Returns the number of milliseconds which have elapsed since the 
 * last time timer_init() was called.
 */
unsigned long long timer_millis(){
	return _timer_millis;
}

/* 
 * The ISR for timer0 overflow.  Increment the _timer_count here, and do the calculcations
 * to increment _timer_millis as needed.
 */
ISR(TIMER0_OVF_vect){
	_timer_count++;
	if (_timer_count > _timer_count_overflow){
		_timer_millis++;
		_timer_count = 0;
	}
}

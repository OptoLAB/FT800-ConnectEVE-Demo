/* 
 * File:   my_delays.h
 * Author: Hector
 *
 */
#ifndef MY_DELAYS_H
#define	MY_DELAYS_H
#include <xc.h>
#include <p32xxxx.h>
#include <plib.h>
#define _XTAL_FREQ 80000000 // Select your XTAL
#define CCLK   (80000000L)    // system clock
#define PBCLK   (CCLK / 2)    // peripheral bus clock
#define SAMPLE_RATE       5000
#define CCLK_US  (PBCLK/1000000L)   //used for microsecond delay
//#define SYS_FREQ (80000000L)

void delay_ms(WORD delay);

//int Delay_us(int vrednost);
void Delay_us (int d);

#endif	/* MY_DELAYS_H */


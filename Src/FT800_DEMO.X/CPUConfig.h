/* 
 * Author: J. Bajic
 */

#ifndef CPUCONFIG_H
#define	CPUCONFIG_H

#pragma config FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FPLLODIV = DIV_1, FWDTEN = OFF  
#pragma config POSCMOD = HS, FNOSC = PRIPLL, FPBDIV = DIV_2

#define SYS_FREQ    (80000000L)
#define PCLK        (SYS_FREQ/2)

#endif	/* CPUCONFIG_H */


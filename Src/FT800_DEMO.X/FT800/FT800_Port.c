#include "FT800_Port.h"
#include <plib.h>

/* ************************************************************************************ */
// Initialize FT800 pins: CS, PD, SPI, INT
/* ************************************************************************************ */

void FT800_InitPins(void)
{
    FT800_CS_IO(); //CS FT800  - output   
    FT800_PD_IO(); //PD FT800  - output
    FT800_INT_IO();//INT FT800 - extern INT3 interrupt    
}

/* ************************************************************************************ */
// Initialize (Open) FT800 SPI channel 
/* ************************************************************************************ */

void F800_InitSPI(void)
{
    FT800_SPICONbits.ON = 0;
    FT800_SPICONbits.FRMEN = 0;
    FT800_SPICONbits.MODE32 = 0;
    FT800_SPICONbits.MODE16 = 0;
    FT800_SPICONbits.SSEN = 0;
    FT800_SPICONbits.MSTEN = 1;
    FT800_SPICONbits.CKE = 1;
    FT800_SPICONbits.CKP = 0;
    FT800_SPICONbits.SMP = 0;
    FT800_SPICONbits.ENHBUF = 0;
    FT800_SPIBRG=(PCLK/(2*FT800_SPI_SPEED) - 1);
    FT800_SPICONbits.ON = 1;     	// Enable SPI
}

/* ************************************************************************************ */
// Initialize external interrupt - required for touch screen
/* ************************************************************************************ */

void F800_InitInterrupt(void)
{
    INTCONbits.SS0 = 0;         //Single vector is not presented with a shadow register set
    INTCONbits.FRZ = 0;         //Continue operation even when CPU is in Debug Exception mode
    INTCONbits.MVEC = 1;        //Interrupt controller configured for Multi-vector mode
    INTCONbits.TPC = 0b000;     //Disables Interrupt Proximity timer
    INTCONbits.INT3EP = 0;      //Falling edge

    IEC0bits.INT3IE = 1;        //INT3 enable 
    IPC3bits.INT3IP = 0b111;    //interrupt priority is 7
    IFS0bits.INT3IF = 0;
}

/* ************************************************************************************ */
// Exchange byte over SPI
/* ************************************************************************************ */

uint8_t SPI_xchg (uint8_t data)
{
	FT800_SPIBUF = data;                    // Initiate an SPI transaction */
	while (!FT800_SPISTATbits.SPIRBF) ;		// Wait for end of the SPI transaction 
	return (BYTE)FT800_SPIBUF;              // Get received byte
}

/* ************************************************************************************ */
// Write data (transmit single byte over SPI)
/* ************************************************************************************ */

void FT800_WriteSPI(uint8_t data)
{
    SPI_xchg(data);// Write the data byte
}

/* ************************************************************************************ */
// Read data (receive single byte over SPI)
/* ************************************************************************************ */

uint8_t FT800_ReadSPI(void)
{
    return SPI_xchg(0x00);                          
}


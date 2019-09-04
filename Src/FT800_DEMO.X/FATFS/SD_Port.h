/* 
 * File:   SD_Port.h
 * Author: Jovan
 *
 * Created on August 5, 2019, 1:16 AM
 */

#ifndef SD_PORT_H
#define	SD_PORT_H

#define SYS_FREQ    (80000000L)
#define PCLK        (SYS_FREQ/2)

#define SD_CS_IO()          TRISEbits.TRISE0 = 0
#define SD_CS_LO()          LATEbits.LATE0 = 0
#define SD_CS_HI()          LATEbits.LATE0 = 1
#define SD_SPI_CHANNEL      SPI_CHANNEL2
#define SD_SPIBUF           SPI2BUF
#define SD_SPIBRG           SPI2BRG
#define SD_SPISTATbits      SPI2STATbits   
#define SD_SPICONbits       SPI2CONbits

#define SD_SPI_SPEED_HI     10000000    //10MHz 
#define SD_SPI_SPEED_LO     400000      //400kHz      


#endif	/* SD_PORT_H */


#include"my_delays.h"
#include <p32xxxx.h>
#include <plib.h>


 
void Delay_us (int d){   
          int StartTime, Delay_Count;       
          Delay_Count = d*CCLK_US;   
          StartTime = ReadCoreTimer();   
          while((ReadCoreTimer() - StartTime) < Delay_Count);
}

void delay_ms(WORD delay)
 {
     unsigned int int_status;
     while( delay-- )
     {
         int_status = INTDisableInterrupts();
         OpenCoreTimer(_XTAL_FREQ /2000);
         INTRestoreInterrupts(int_status);
         mCTClearIntFlag();
         while( !mCTGetIntFlag() );
     }
     mCTClearIntFlag();
 }
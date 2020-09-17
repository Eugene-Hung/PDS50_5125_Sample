/*
 * @Author: Eugene Hung
 * @Date: 2020-08-20 14:36:29
 * @LastEditTime: 2020-08-20 14:38:41
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Eugene_sample\apps\applications\sink\User\EugeneMain.c
 */

#include "eugene_main.h"

void EugeneInitial(void) 
{
    uint32 test_pio = 0;

    EugenePioInitial();
    
    EUGENE_DEBUG(("DUT power on \n"));
    MessageSendLater(&theSink.task, EventUsrEnterPairing, 0, 3000);

    test_pio = PioGet32Bank(2);

    EUGENE_DEBUG(("-------- %X \n", test_pio));

    I2cBusInit();
}
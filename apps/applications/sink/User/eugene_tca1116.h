#ifndef EUGENE_TCA1116_H
#define EUGENE_TCA1116_H

#include "eugene_i2c_bus.h"

#define TCA1116_SLAVE_ADDRESS 0x76
#define TCA1116_IPPUT_PORT0_REGISTER 0x00

#define DATA_LENGTH 6
const uint8 tca1116_init_data[DATA_LENGTH] =
    {
        0x00, 0x00, /* output p0 , value , output p1 , value */
        0x00, 0x00, /* invert p0 , value , invert p1 , value */
        0x00, 0x7B, /* dir p0  1: input , 0 output , dir p1  1: input , 0 output */
};

void Tca1116Initial(void);
bitserial_result Tca1116WriteOneByte(uint8 register_address, uint8 tx_data);

#endif // EUGENE_TCA1116_H

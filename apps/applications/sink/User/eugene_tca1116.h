#ifndef EUGENE_TCA1116_H
#define EUGENE_TCA1116_H

#include "eugene_i2c_bus.h"

#define TCA1116_SLAVE_ADDRESS  0x76







  const uint8 tca1116_init_data[6] = 
  {
      0x00, 0x00, /* output p0 , value , output p1 , value */
      0x00, 0x00, /* invert p0 , value , invert p1 , value */
      0x00, 0x7B, /* dir p0  1: input , 0 output , dir p1  1: input , 0 output */ 
  };








#endif // EUGENE_TCA1116_H

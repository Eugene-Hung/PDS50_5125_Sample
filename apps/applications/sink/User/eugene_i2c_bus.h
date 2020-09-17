#ifndef EUGENE_I2C_BUS_H
#define EUGENE_I2C_BUS_H

#include <bitserial_api.h>
#include <stdlib.h>
#include "eugene_pio.h"


#define MEMARY_ERROR   0x22
#define SLVAVE_ADDRESS 0xFF

#define SLAVE_REGISTER_ADDRESS_SIZE 2
#define ONLY_WRITE_DATA 0




#define I2C_BUS_SCL 61
#define I2C_BUS_SDA 60

typedef enum
{
  i2c_bus_write = 0,
  i2c_bus_read,

}transfer_type;



void I2cBusInit(void);
bitserial_result I2cTransferOneByte(uint8 slave_address, uint8 register_address, uint8* transfer_data, bool transfer_flag);
bitserial_result I2cTransferBytes(uint8 slave_address, uint8 register_address, uint8 *transfer_data, uint16 size_data, bool transfer_flag);



#endif // EUGENE_I2C_BUS_H

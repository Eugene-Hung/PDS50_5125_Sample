#ifndef EUGENE_I2C_BUS_H
#define EUGENE_I2C_BUS_H

#include <bitserial_api.h>
#include "eugene_pio.h"

#define SLVAVE_ADDRESS 0xFF

#define I2C_BUS_SCL 61
#define I2C_BUS_SDA 60




void I2cBusInit(void);
void I2cTransferOneByte(bitserial_handle handle_i2c_bus, uint8 device_address);

#endif // EUGENE_I2C_BUS_H

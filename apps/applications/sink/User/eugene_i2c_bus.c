
#include "eugene_i2c_bus.h"

bitserial_handle handle_i2c_bus_0 = 0;

void I2cBusInit(void)
{

    bitserial_config *i2c_bus_configuration = NULL;

    PioSetMapPins32Bank(PIO_BANK(I2C_BUS_SCL), PIO_MASK(I2C_BUS_SCL) | PIO_MASK(I2C_BUS_SDA), PIO_BITS_HARDWARE(I2C_BUS_SCL) | PIO_BITS_HARDWARE(I2C_BUS_SDA));

    i2c_bus_configuration->mode                  = BITSERIAL_MODE_I2C_MASTER;
    i2c_bus_configuration->clock_frequency_khz   = 100;
    i2c_bus_configuration->timeout_ms            = 0;
    i2c_bus_configuration->u.i2c_cfg.i2c_address = SLVAVE_ADDRESS;
    i2c_bus_configuration->u.i2c_cfg.flags       = BITSERIAL_I2C_ACT_ON_NAK_STOP;

    handle_i2c_bus_0 = BitserialOpen(BITSERIAL_BLOCK_0, i2c_bus_configuration);

    PioSetFunction(I2C_BUS_SCL, BITSERIAL_0_CLOCK_IN);
    PioSetFunction(I2C_BUS_SCL, BITSERIAL_0_CLOCK_OUT);
    PioSetFunction(I2C_BUS_SDA, BITSERIAL_0_DATA_IN);
    PioSetFunction(I2C_BUS_SDA, BITSERIAL_0_DATA_OUT);

}

void I2cTransferOneByte(bitserial_handle handle_i2c_bus, uint8 device_address)
{
    BitserialChangeParam(handle_i2c_bus,BITSERIAL_PARAMS_I2C_DEVICE_ADDRESS,device_address, BITSERIAL_FLAG_NO_STOP);


}

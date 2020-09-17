
#include "eugene_i2c_bus.h"

bitserial_handle handle_i2c_bus_0 = 0;

void I2cBusInit(void)
{

    bitserial_config *i2c_bus_configuration = NULL;

    PioSetMapPins32Bank(PIO_BANK(I2C_BUS_SCL), PIO_MASK(I2C_BUS_SCL) | PIO_MASK(I2C_BUS_SDA), PIO_BITS_HARDWARE(I2C_BUS_SCL) | PIO_BITS_HARDWARE(I2C_BUS_SDA));

    i2c_bus_configuration->mode = BITSERIAL_MODE_I2C_MASTER;
    i2c_bus_configuration->clock_frequency_khz = 100;
    i2c_bus_configuration->timeout_ms = 0;
    i2c_bus_configuration->u.i2c_cfg.i2c_address = SLVAVE_ADDRESS;
    i2c_bus_configuration->u.i2c_cfg.flags = BITSERIAL_I2C_ACT_ON_NAK_STOP;

    handle_i2c_bus_0 = BitserialOpen(BITSERIAL_BLOCK_0, i2c_bus_configuration);

    PioSetFunction(I2C_BUS_SCL, BITSERIAL_0_CLOCK_IN);
    PioSetFunction(I2C_BUS_SCL, BITSERIAL_0_CLOCK_OUT);
    PioSetFunction(I2C_BUS_SDA, BITSERIAL_0_DATA_IN);
    PioSetFunction(I2C_BUS_SDA, BITSERIAL_0_DATA_OUT);
}

bitserial_result I2cTransferOneByte(uint8 slave_address, uint8 register_address, uint8* transfer_data, bool transfer_flag)
{
    bitserial_result result = 0;
    bitserial_transfer_handle *handle_massage = NULL;

    BitserialChangeParam(handle_i2c_bus_0, BITSERIAL_PARAMS_I2C_DEVICE_ADDRESS, slave_address, BITSERIAL_FLAG_NO_STOP);
    if (transfer_flag == i2c_bus_write)
    {
        uint8 *i2c_tx_data = malloc(SLAVE_REGISTER_ADDRESS_SIZE);

        if (i2c_tx_data == NULL)
        {
            return MEMARY_ERROR;
        }
        i2c_tx_data[0] = register_address;
        i2c_tx_data[1] = *transfer_data;

        result = BitserialTransfer(handle_i2c_bus_0, handle_massage, i2c_tx_data, 2, NULL, 0);

        free(i2c_tx_data);
        i2c_tx_data = NULL;
    }
    else
    {
        result = BitserialTransfer(handle_i2c_bus_0, handle_massage, &register_address, 1, transfer_data, 1);

    }
    return result;

}


bitserial_result I2cTransferBytes(uint8 slave_address, uint8 register_address, uint8 *transfer_data, uint16 size_data, bool transfer_flag)
{
    bitserial_result result = 0;
    bitserial_transfer_handle *handle_massage = NULL;

    BitserialChangeParam(handle_i2c_bus_0, BITSERIAL_PARAMS_I2C_DEVICE_ADDRESS, slave_address, BITSERIAL_FLAG_NO_STOP);
    if (transfer_flag == i2c_bus_write)
    {
        uint16 tx_data_size = size_data + 1;
        uint8 *i2c_tx_data = malloc(tx_data_size);

        if (i2c_tx_data == NULL)
        {
            return MEMARY_ERROR;
        }
        memcpy(&i2c_tx_data[1], transfer_data, tx_data_size);
        i2c_tx_data[0] = register_address;

        result = BitserialTransfer(handle_i2c_bus_0, handle_massage, i2c_tx_data, tx_data_size, NULL, 0);

        free(i2c_tx_data);
        i2c_tx_data = NULL;
    }
    else
    {
        result = BitserialTransfer(handle_i2c_bus_0, handle_massage, &register_address, 1, transfer_data, size_data);

    }
    return result;
    
}

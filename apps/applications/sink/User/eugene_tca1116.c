
#include "eugene_tca1116.h"


bitserial_result Tca1116WriteOneByte(uint8 register_address, uint8 tx_data)
{
    bitserial_result tca1116_result = 0;

    tca1116_result = I2cTransferOneByte(TCA1116_SLAVE_ADDRESS, register_address, &tx_data,i2c_write_flag);

    return tca1116_result;
}

bitserial_result Tca1116WriteBytes(uint8 register_address, uint8 *tx_data, uint16 size_data)
{
    bitserial_result tca1116_result = 0;

    tca1116_result = I2cTransferBytes(TCA1116_SLAVE_ADDRESS, register_address, tx_data, size_data, i2c_write_flag);

    return tca1116_result;
}

void Tca1116Initial(void)
{
    uint8 *tca1116_data = malloc(DATA_LENGTH);
    memcpy(tca1116_data, &tca1116_init_data, DATA_LENGTH);
    Tca1116WriteBytes(TCA1116_IPPUT_PORT0_REGISTER, tca1116_data, DATA_LENGTH);
}

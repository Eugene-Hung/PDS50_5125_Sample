#ifndef EUGENE_PIO_H
#define EUGENE_PIO_H

#include <pio_common.h>

#include "../sink_pio.h"

#define NUMBER_OF_PIOS_PER_BANK     (32U)
#define PIO_BANK(pio)               (uint16)((pio) / NUMBER_OF_PIOS_PER_BANK)
#define PIO_MASK(pio)               (1UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)

#define PIO_BITS_HARDWARE(pio)      (0UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)  /* e.g. Mapping to be a function,so as Uart,SPI,IIC */
#define PIO_BITS_SOFTWARE(pio)      (1UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)

#define PIO_BITS_DIR_INPUT(pio)     (0UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)  
#define PIO_BITS_DIR_OUTPUT(pio)    (1UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)

#define PIO_BITS_OUTPUT_LOW(pio)    (0UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)  
#define PIO_BITS_OUTPUT_HIGH(pio)   (1UL<<(pio) % NUMBER_OF_PIOS_PER_BANK)


#define AMP_MUTE   (52)


void EugenePioInitial(void);

#endif // EUGENE_PIO_H

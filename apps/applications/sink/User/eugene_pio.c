
#include "eugene_pio.h"

void EugenePioInitial(void)
{
    PioSetMapPins32Bank(PIO_BANK(AMP_MUTE), PIO_MASK(AMP_MUTE), PIO_BITS_SOFTWARE(AMP_MUTE));
    PioSetDir32Bank(PIO_BANK(AMP_MUTE), PIO_MASK(AMP_MUTE), PIO_BITS_DIR_OUTPUT(AMP_MUTE));    /* Set Pio as output */
    PioSet32Bank(PIO_BANK(AMP_MUTE), PIO_MASK(AMP_MUTE), PIO_BITS_OUTPUT_HIGH(AMP_MUTE));       


}
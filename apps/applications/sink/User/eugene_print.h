#ifndef EUGENE_PRINT_H
#define EUGENE_PRINT_H

#include <stdio.h>
#define  EUGENE_PRINT_SWITCH   1


#if       (EUGENE_PRINT_SWITCH==1)
#define   EUGENE_DEBUG(x)  printf x;
#else
#define   EUGENE_DEBUG(x)
#endif




#endif // EUGENE_PRINT_H

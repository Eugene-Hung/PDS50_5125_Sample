#ifndef EUGENE_PRINT_H
#define EUGENE_PRINT_H

#include <stdio.h>
#define  EUGENE_PRINT_SWITCH   1


#if       (EUGENE_PRINT_SWITCH==1)
#define   eugene_print(x)  printf x;
#else
#define   eugene_print(x)
#endif




#endif // EUGENE_PRINT_H

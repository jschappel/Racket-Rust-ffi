#include <stdio.h>
#include "graphviz.h"

/* How to compile
 1) gcc -c graphviz.c
 2) gcc -shared -o graphviz.dll mydll.o
*/


EXPORT void message() {
    printf("Hello world");
}

EXPORT int return_5() {
    return 5;
}

EXPORT int add(int x, int y) {
    return x + y;
}

EXPORT void add_pointer(int *x, int *y) {
    *x = *x + *y;
}
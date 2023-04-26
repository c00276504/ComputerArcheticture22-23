#include <stdio.h>
#include "multiply.h"

int main() {
    int result;
    result = multiply(30, 20, 10); // multiply function is defined in asm file
    printf("Function multiply(..) Result: %i\n", result);
    return 0;
}

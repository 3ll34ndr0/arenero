#include "prbs31.h"

void prbs31(result_t * hw_out) {
    static data_t a = SEED;
        int newbit = (((a >> 30) ^ (a >> 27)) & 1);
        a = ((a << 1) | newbit) & 0x7fffffff;
        *hw_out = a;
    }


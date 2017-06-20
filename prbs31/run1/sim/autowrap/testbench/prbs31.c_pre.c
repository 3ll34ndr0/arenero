# 1 "/home/lean/vivado/tp/prbs31/vivado/prbs31.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/lean/vivado/tp/prbs31/vivado/prbs31.c"
# 1 "/home/lean/vivado/tp/prbs31/vivado/prbs31.h" 1



typedef int data_t;
typedef int result_t;
void prbs31(result_t * out);
# 2 "/home/lean/vivado/tp/prbs31/vivado/prbs31.c" 2

void prbs31(result_t * hw_out) {
    static data_t a = 0x02;
        int newbit = (((a >> 30) ^ (a >> 27)) & 1);
        a = ((a << 1) | newbit) & 0x7fffffff;
        *hw_out = a;
    }

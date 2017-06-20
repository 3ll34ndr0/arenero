#pragma line 1 "/home/lean/vivado/tp/prbs31/vivado/prbs31.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/lean/vivado/tp/prbs31/vivado/prbs31.c"
#pragma line 1 "/home/lean/vivado/tp/prbs31/vivado/prbs31.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int data_t;
typedef int result_t;
void prbs31(result_t * out);
#pragma line 2 "/home/lean/vivado/tp/prbs31/vivado/prbs31.c" 2
#pragma empty_line
void prbs31(result_t * hw_out) {
    static data_t a = 0x02;
        int newbit = (((a >> 30) ^ (a >> 27)) & 1);
        a = ((a << 1) | newbit) & 0x7fffffff;
        *hw_out = a;
    }

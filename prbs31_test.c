#include <math.h> 
#include "prbs31.h"
#include <stdio.h>


int main () {
//  FILE   *fp;
//  data_t seed;
//  seed = 0x02;
  int i;

// Generate the expected result
   	data_t start = SEED;
   	result_t hw_out=start;
   	result_t sw_out=start;
   	for(i = 1;; i++) {
   		int newbit = (((sw_out >> 30) ^ (sw_out >> 27)) & 1);
   	    sw_out = ((sw_out << 1) | newbit) & 0x7fffffff;
   	    if (sw_out == 75497536) {
//   	   Detects when the cycle repeats
   	        break;
   	        }

   	    // Run the AutoESL matrix multiply block
   	    prbs31(&hw_out);

   	    // Print result vector
         printf(" %d",hw_out);
         printf(" %d",sw_out);
   	}
	   printf("Test done.\n");
   	return 0;
}

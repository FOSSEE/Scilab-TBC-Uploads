clear;
clc;
disp("--------------Example 10.21---------------")
n=-6;
// compute 1's complement
d_complement=bitcmp(-n,4);
b_complement=dec2bin(d_complement,4);
printf("The number %d in ones complement arithmetic using only four bits is %s or %d.",n,b_complement,d_complement); // display result

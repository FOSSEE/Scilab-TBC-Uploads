//example 2.9(b)//
//representation in 1's complement form//
clc
//clears the window//
clear
//clears all the existing variables//
x=8
//x=+8//y=-x//
xb=dec2bin(8)
//xb means binary conversion of x to its one's complement form//
xc=dec2bin(bitcmp(8,5))
//xc means conversion of y in its one's complement form//
disp(x)
printf("=")
disp(xb)
//displaying answer in one's complement form//
disp(-x)
printf("=")
disp(xc)
//answer in one's complement form//
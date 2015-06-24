//example 2.9(c)//
//representation in 1's complement form//
clc
//clears the window//
clear
//clears all the existing variables//
x=15
//x=+15//y=-x//
xb=dec2bin(15)
//xb means binary conversion of x to its one's complement form//
xc=dec2bin(bitcmp(15,5))
//xc means conversion of y in its one's complement form//
disp(x)
printf("=")
disp(xb)
//displaying answer in one's complement form//
disp(-x)
printf("=")
disp(xc)
//answer in one's complement form//
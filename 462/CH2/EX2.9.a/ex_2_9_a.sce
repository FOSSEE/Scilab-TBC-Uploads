//example 2.9(a)//
//representation in 1's complement form//
clc
//clears the screen//
clear
//clears all the existing variables//
x=7
//x=+7//y=-x//
xb=dec2bin(7)
//xb means binary conversion of x to its one's complement form//
xc=dec2bin(bitcmp(7,4))
//xc means conversion of y in its one's complement form//
disp('displaying result of +7 and -7 in ones complement form')
disp(x)
printf("=")
disp(xb)
//displaying answer in one's complement form//
disp(-x)
printf("=")
disp(xc)
//answer in one's complement form//
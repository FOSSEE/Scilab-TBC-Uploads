//Example 2-34//
// -17 in two’s complement form by second method//
clc
//clears the window//
clear
//clears all existing variables//
x=bitcmp(17,8)
//complement of the decimal number 17(8 bit representation)//
y=1
z=x+y
//1 is added to the complement//
a=dec2bin(z)
//binary conversion of the decimal number//
disp(' -17 in two’s complement form is: ')
disp(a)
//result is displayed//

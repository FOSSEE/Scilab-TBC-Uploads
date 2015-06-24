//Example 2-37//
// negative decimal representation of 10011011//
clc
//clears the window//
clear
//clears all existing variables//
b=bin2dec('10011011')
x=bitcmp(b,8)
//complement of the decimal number 17(8 bit representation)//
y=1
z=x+y
//1 is added to the complement//
a=dec2bin(z)
//binary conversion of the decimal number//
z=z*(-1)
disp(' the negative value that 10011011 represents is: ')
disp(z)
//result is displayed//

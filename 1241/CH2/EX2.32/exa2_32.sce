//Example 2-32//
// -16000 in two’s complement form//
clc
//clears the console//
clear
//clears all existing variables//
x=2^16
//Smallest nine bit number//
y=16000
z=x-y
//subtraction//
a=dec2bin(z)
//binary conversion of the decimal number//
disp(' -16000 in two’s complement form is ')
disp(a)
//answer in binary form//

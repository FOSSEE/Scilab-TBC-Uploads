//Example 2-10//
//Binary Subtraction//
clc
//clears the console//
clear
//clears all existing variables//
x=bin2dec('100')
y=bin2dec('1')
//binary to decimal conversion//
z=x-y
//subtraction//
a=dec2bin(z)
//decimal to binary conversion//
disp('subtraction of two binary numbers is:')
disp(a)
//answer in binary form//

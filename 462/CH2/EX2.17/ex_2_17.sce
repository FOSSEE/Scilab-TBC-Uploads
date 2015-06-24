//example 2.17//
//division in binary//
clc
//clears the window//
clear
//clears already existing variables//
x=bin2dec('1110101')
//x is the first number//
//binary to decimal conversion//
y=bin2dec('1001')
//y is the second number w/c is to be divided//
z=x/y
//division//
a=dec2bin(z)
//decimal to binary conversion//
disp('the division of given numbers results in:')
disp(a)
//answer in binary form//
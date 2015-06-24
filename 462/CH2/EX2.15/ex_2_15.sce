//example 2.15//
//subtraction of two binary number//
clc
//clears the screen//
clear
//clears the existing variables//
x=bin2dec('1011')
//x is the minuend//
//binary to decimal conversion//
y=bin2dec('0110')
//y is the subtrahend//
z=x-y
//subtraction//
disp('the subtraction of given numbers is:')
ans=dec2bin(z)
//decimal to binary conversion//
disp(ans)
//answer in binary form//
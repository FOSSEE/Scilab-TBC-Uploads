//example 2.13(b)//
//addition of binary number//
clc
//clears the screen//
clear
//clears already existing variables//
x=bin2dec('0101')
//binary to decimal conversion//
y=bin2dec('1111')
z=x+y
//addition//
a=dec2bin(z)
//decimal to binary conversion//
disp('the addition of given numbers is:')
disp(a)
//answer in binary form//
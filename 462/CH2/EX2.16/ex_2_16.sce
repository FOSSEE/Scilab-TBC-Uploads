//example 2.16//
//multiplication in binary form//
clc
//clears the screen//
clear
//clears all the existing variables//
x=bin2dec('1001')
//first number to be multiplied is x//
//binary to decimal conversion//
y=bin2dec('1101')
//second number to be multiplied is y//
z=x*y
//multiplication//
a=dec2bin(z)
//decimal to binary conversion//
disp('the multiplication of given numbers results in :')
disp(a)
//answer in binary number//
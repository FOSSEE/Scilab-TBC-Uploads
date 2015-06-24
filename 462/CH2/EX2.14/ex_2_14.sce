//example 2.14//
//addition of binary numbers//
clc
//clears the screen//
clear
//clears already existing variables//
x=bin2dec('01101010')
//x is the first number in addition//
//binary to decimal conversion//
y=bin2dec('00001000')
//y is the second number in addition//
t=bin2dec('10000001')
//t is the third number in addition//
k=bin2dec('11111111')
//k is the fourth number we have to end//
z=x+y+t+k
//addition//
a=dec2bin(z)
//decimal to binary conversion//
disp('the addition of given numbers is:')
disp(a)
//answer in binary form//
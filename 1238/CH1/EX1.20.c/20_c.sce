//decimal to signed binary number// 
//example 20.c//
clc
//clears the command window//
clear
//clears//
//decimal to signed binary number system//
x=-19
a=dec2bin(-x)
//decimal to binary conversion//
a=dec2bin(-x+bin2dec('100000'))
disp('the answer is:')
disp(a)
//since the number is negative it starts with a 1,msb indicates the sign//

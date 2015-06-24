//decimal to signed binary number// 
//example 20.b//
clc
//clears the command window//
clear
//clears//
//decimal to signed binary number system//
x=-29
a=dec2bin(-x)
//decimal to binary conversion//
a=dec2bin(-x+bin2dec('100000'))
disp('the answer is:')
disp(a)
//since the number is negative it starts with a 1//

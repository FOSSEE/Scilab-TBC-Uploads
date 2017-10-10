// example 2.4//
clc
//clears the screen//
clear
//clears all existing variables//
a=bin2dec('1110');
//given numbers//
b=bin2dec('11011');
c=b-a;
d=dec2bin(c,8)
disp(c,'subtraction of given numbers in decimal form = ')
disp(d,'subtraction of given numbers in binary form = ')
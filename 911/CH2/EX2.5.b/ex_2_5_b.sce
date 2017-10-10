// example 2.5.b//
clc
//clears the screen//
clear
//clears all existing variables//
a=hex2dec('29');
//given numbers//
b=hex2dec('4F');
c=b-a;
d=dec2bin(c,8)
e=dec2hex(c)
disp(c,'subtraction of given numbers in decimal form = ')
disp(d,'subtraction of given numbers in binary form = ')
disp(e,'subtraction of given numbers in hexadecimal form = ')
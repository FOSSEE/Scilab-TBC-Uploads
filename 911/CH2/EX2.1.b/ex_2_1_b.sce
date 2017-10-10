//example 2.1(b)//
clc
//clears the screen//
clear
//clears all existing variables//
a=hex2dec('AF1')
b=hex2dec('FFF')
c=a+b;
d=dec2bin(c);
e=dec2hex(c);
disp(c, ' addition of given numbers in decimal form = ')
disp(d, ' addition of given numbers in binary form = ')
disp(e, ' addition of given numbers in hexadecimal form = ')
// example 2.13//
//octal subtracttion//
clc
//clears the screen//
clear
//clears all existing variables//
a=oct2dec('17');
//given numbers//
b=oct2dec('21');
c=b-a;
d=dec2bin(c,8)
e=dec2oct(c)
disp(c,'subtraction of given numbers in decimal form = ')
disp(d,'subtraction of given numbers in binary form = ')
disp(e,'subtraction of given numbers in octal form = ')
//example 2.27 (a)//
//subtraction of octal numbers//
clc
//clears the screen//
clear
//clears already existing variables//
x=oct2dec('53')
//octal to decimal conversion//
y=oct2dec('37')
z=x-y
//subtraction//
a=dec2oct(z)
//decimal to octal conversion//
b=dec2bin(z)
//decimal to binary conversion//
disp('result of subtraction of given numbers in octal form is:')
disp(a)
//answer in octal form//
disp('result of subtraction of given numbers in binary form is:')
disp(b)
//answer in binary form//
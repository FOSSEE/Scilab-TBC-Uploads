//example 2.26//
//addition of octal numbers//
clc
//clears the screen//
clear
//clears already existing variables//
x=oct2dec('23')
//octal to decimal conversion//
y=oct2dec('67')
z=x+y
//addition//
a=dec2oct(z)
//decimal to octal conversion//
b=dec2bin(z)
//decimal to binary conversion//
disp('addition of given no is octal form is')
disp(a)
//answer in octal form//
disp('addition of given numbers in binary form is:')
disp(b)
//answer in binary form//
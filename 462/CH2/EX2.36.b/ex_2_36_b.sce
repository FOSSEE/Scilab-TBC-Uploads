//example 2.36(b)//
//subtraction of hexadecimal numbers//
clc
//clears the screen//
clear
//clears already existing variables//
x=hex2dec('C0')
//hexadecimal to decimal conversion//
y=hex2dec('7A')
z=x-y
//subtraction//
a=dec2hex(z)
//decimal to hexadecimal conversion//
b=dec2bin(z)
//decimal to binary conversion//
disp('answer in hexadecimal form is:')
disp(a)
//answer in hexadecimal form//
disp('answer in binary form is:')
disp(b)
//answer in binary number//
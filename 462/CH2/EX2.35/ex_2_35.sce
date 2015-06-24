//example 2.35//
//addition of hexadecimal number//
clc
//clears the screen//
clear
//clears already existing variables//
x=hex2dec('7F')
//hexadecimal to decimal conversion//
y=hex2dec('BA')
z=x+y
//addition//
a=dec2hex(z)
//decimal to hexadecimal conversion//
disp('addition of given hexadecimal numbers results in :')
disp(a)
//answer in hexadecimal form//
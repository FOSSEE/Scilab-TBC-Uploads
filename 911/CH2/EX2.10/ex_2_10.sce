// example 2.10//
//division in hexadecimal//
clc
//clears the window//
clear
//clears already existing variables //
x=hex2dec('AF')
// x i s the first number //
// hexadecimal to decimal conversion //
y=hex2dec('09')
//y is the second number w/c is to be divided//
s=x/y;
//division//
disp (s,'the division of given numbers results in decimal form : ')
a=round(s)
a1=dec2hex(a)
// decimal to hexadecimal conversion//
disp (a1,'the division of given numbers results in hexadecimal form : ' )
// answer in binary form//
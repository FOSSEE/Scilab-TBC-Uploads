//example 1.15.a//
//decimal to gray numbers//
clc
//clears the screen//
clear
//clears all existing variables//
a=dec2bin(13)
//for binary to gray, first no (MSB) remains the same, second number is addition of first and second of binary ignoring the carry and so on.//
disp('gray equivalent of decimal no 13 =1011')
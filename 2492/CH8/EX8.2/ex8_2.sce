// Exa 8.2
format('v',9)
clc;
clear;
close;
// Given data
str= '527';// given number in octal to convert into binary
str_in_dec= oct2dec(str);// decimal equivalent
str_in_bin= dec2bin(str_in_dec);// binary equivalent
disp(str_in_bin,"The binary equivalent of 527 is : ")


// Exa 8.1
format('v',9)
clc;
clear;
close;
// Given data
str= '3BF';// given number in hexadecimal to convert into binary
str_in_dec= hex2dec(str);// decimal equivalent
str_in_bin= dec2bin(str_in_dec);// binary equivalent
disp(str_in_bin,"The binary equivalent of 3BF is : ")

// Note : The answer in the book is wrong because binary equivalent of B = 1011 and in the book they used 1101 which is wrong.

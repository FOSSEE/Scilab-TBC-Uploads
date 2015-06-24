// Exa 8.3
format('v',9)
clc;
clear;
close;
// Given data
str= '256';// given number in octal to convert into hexadecimal
str_in_dec= oct2dec(str);// decimal equivalent
str_in_hex= dec2hex(str_in_dec);// hexadecimal equivalent
disp(str_in_hex,"The hexadecimal equivalent of 256 is : ")


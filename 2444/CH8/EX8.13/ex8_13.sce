// Exa 8.13
clc;
clear;
close;
format('v',7)
// Given data
f2 = 100;// in kHz
f_H = f2/(sqrt(2^(1/3)-1 ));// in kHz
disp(f_H,"The upper 3-dB frequency of each stage in kHz is");
f1 = 25;// in kHz
f_L = f1/(sqrt(2^(1/3)-1 ));// in kHz
disp(f_L,"The lower 3-dB frequency of each stage in kHz is");

// Note: The value of upper 3-dB frequency in the book is not accurate and the calculated value of f_L is wrong. because 25 will be divided by 0.51 not multiplied.

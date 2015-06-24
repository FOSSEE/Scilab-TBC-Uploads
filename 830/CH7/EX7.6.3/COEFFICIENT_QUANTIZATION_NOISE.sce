//Graphical//
//Example 7.6.3 
//Program to Calculate  Quantization Noise in FIR Filter
//For M = 32 and No.of bits = 12
clear;
clc;
close;
b = input('Enter the number of bits');
M = input('Enter the FIR filter length');
disp('Coefficient Quantization Error in FIR Filter')
Sigma_e_square = (2^(-2*(b+1)))*M/12

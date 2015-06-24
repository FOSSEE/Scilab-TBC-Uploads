//Graphical//
//Example 6.4.2
//Program to Calculate No.of bits required for given
//Signal to Quantization Noise Ratio
//in FFT algorithm
clear;
clc;
close;
N = 1024;
SQNR = 30;  //SQNR = 30 dB
v = log2(N); //number of stages
b = (log2(10^(SQNR/10))+v+1)/2;
b = ceil(b)
disp(b,'The number of bits required rounded to:')

//Graphical//
//Example 6.4.1
//Program to Calculate No.of bits required for given
//Signal to Quantization Noise Ratio
//in computing DFT
clear;
clc;
close;
N = 1024;
SQNR = 30;  //SQNR = 30 dB
v = log2(N); //number of stages
b = (log2(10^(SQNR/10))+2*v)/2;
b = ceil(b)
disp(b,'The number of bits required rounded to:')

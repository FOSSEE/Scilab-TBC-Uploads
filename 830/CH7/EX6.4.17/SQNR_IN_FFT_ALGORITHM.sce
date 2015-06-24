//Graphical//
//Equation 6.4.17 
//page492
//Program to Calculate  Signal to Quantization Noise Ratio
//in FFT algorithm
clear;
clc;
close;
N = input('Enter the N point FFT value');
b = log2(N)
Quantization_Noise = (2/3)*(2^(-2*b))
Signal_Power = (1/(3*N))
SQNR = Signal_Power/Quantization_Noise
//RESULT
//Enter the N point FFT value 1024
// b  =    10.  
// Quantization_Noise  =   0.0000006  
// Signal_Power  =   0.0003255  
// SQNR  =    512.  
//-->10*log10(SQNR) =  27.0927

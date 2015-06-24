//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 380 and 381
clear;
clc;

//Given

Ic=12;//rms current of unmodulated carrier in amperes
I=14;//rms current of modulated carrier in amperes

//Solution

m=sqrt(2*((I/Ic)^2-1));//modulation index of AM wave
printf("Modulation index m = %.2f %%",m*100);

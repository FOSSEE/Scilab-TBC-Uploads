clear;
clc;
disp("--------------Example 4.12---------------")
L=8; // number of levels
nb=log2(L); // number of bits per sample
SNRdB=6.02*(nb)+1.76; // formula
printf("The SNRdB is %4.2f dB.\nIncreasing number of levels increases the SNR.",SNRdB); // display result



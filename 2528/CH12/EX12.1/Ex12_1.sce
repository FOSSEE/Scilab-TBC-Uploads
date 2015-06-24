// Chapter 12
// Resolution of System
// Page.No-445
// Example12_1
// Given
clear;clc;
V=2;            //in V
Bits=12;
levels=2^Bits;       //12 bit words
step=V/levels;
printf("\n The system can resolve = %.6f V\n",step); // Result
Drange=20*log10(levels);
printf("\n The Dynamic Range is = %.0f dB\n",Drange); // Result

DR=6*Bits;
printf("\n The Dynamic Range is approx (6dB * no.of bits),i.e. = %.0f dB\n",DR); // Result


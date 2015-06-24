// Chapter 12
// Step size
// Page.No-446
// Example12_2
// Given
clear;clc;
Bits=16;
V=0.775;            //in V
Vp=1.550;            //in Vp_p
levels=2^Bits;       //12 bit words
DR=6*Bits;
printf("\n The Dynamic Range is  = %.0f dB\n",DR); // 
step=Vp/levels;
printf("\n The system can resolve = %.8f V\n",step); // Result

// Example 10.6.1 
clc;
clear;
V2=12;
V1=2.5;
L2=3;
L1=0.004;
alpha_dB = 10* log10(V2/V1)/(L2-L1);
un = 0.2/(L2-L1);
printf("\nAttenuation is %.2f dB/km\nUncertainity +/- %.3f dB.",alpha_dB,un);
//answer for attenuation in the book is 2.26 deviation of 0.01 and for uncertaininty is 0.066 deviation of 0.001

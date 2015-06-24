// Chapter7
// Page.No-264
// Example_7_6
// Determination of low cutoff frequency
// Given
clear;clc;
R2=33*10^3;
R3=R2;
C2=0.0047*10^-6;
C3=C2;
fl=1/(2*%pi*sqrt(R2*R3*C2*C3));
printf("\n Low cutoff freq fl is = %.1f Hz \n",fl) // Result
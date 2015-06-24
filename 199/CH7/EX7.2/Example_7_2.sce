// Chapter7
// Page.No-256
// Example_7_2
// Design of low pass filter
// Given
clear;clc;
fc0=1*10^3; // Original cut-off frequency
fc1=1.6*10^3; // New cut-off frequency
R=15.9*10^3; // Original resistance value
k=fc0/fc1;
Rnew=R*k;
printf("\n New Resistance Rnew is = %.1f ohm \n",Rnew) // Result

// Chapter7
// Page.No-272
// Example_7_8_a
// Design of narrow bandpass filter
// Given
clear;clc;
fc0=1*10^3; // Original center frequency
fc1=1.5*10^3; // New center frequency
R2=5.97*10^3; // Original resistance
R2new=R2*(fc0/fc1)^2;
printf("\n Resistance R1 is = %.1f ohm \n", R2new) // Result
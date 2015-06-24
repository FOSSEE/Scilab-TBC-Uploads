// Chapter7
// Page.No-272
// Example_7_8_a
// Design of narrow bandpass filter
// Given
clear;clc;
fc=1*10^3; // Center frequency
Q=3; // Quality factor
Af=10; // Passband gain
C1=0.01*10^-6; // Assumption
C2=C1;
R1=Q/(2*%pi*fc*C1*Af);
R2=Q/(2*%pi*fc*C1*(2*Q^2-Af));
R3=Q/(%pi*fc*C1);
printf("\n Resistance R1 is = %.1f ohm \n", R1) // Result
printf("\n Resistance R2 is = %.1f ohm \n", R2) // Result
printf("\n Resistance R3 is = %.1f ohm \n", R3) // Result

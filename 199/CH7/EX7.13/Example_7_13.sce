// Chapter7
// Page.No-282
// Example_7_13
// Design of wein bridge oscillator
// Given
clear;clc;
fo=965; // Frequency of oscillation
C=0.05*10^-6; // Assumption
R=0.159/(fo*C);
printf("\n Resistance R is = %.1f ohm \n",R) // Result
R1=12*10^3; // Assumption
Rf=2*R1;
printf("\n Resistance Rf is = %.1f ohm \n",Rf) // Result
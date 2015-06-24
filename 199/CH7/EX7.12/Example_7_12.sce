// Chapter7
// Page.No-282
// Example_7_1
// Design of phase shift oscillator
// Given
clear;clc;
fo=200; // Frequency of oscillation
C=0.1*10^-6; // Assumption
R=0.065/(fo*C);
printf("\n Resistance R is = %.1f ohm \n",R) // Result
printf("\n Use Resistance R as 3.3 kohm \n")
R=3.3*10^3;
R1=10*R; // To prevent loading of amplifier
Rf=29*R1;
printf("\n Resistance Rf is = %.1f ohm \n",Rf) // Result
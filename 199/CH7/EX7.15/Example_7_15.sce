// Chapter7
// Page.No-287
// Example_7_15
// Design of squarewave oscillator
// Given
clear;clc;
fo=1*10^3;; // Frequency of oscillation
R1=10*10^3; // Assumption
C=0.05*10^-6; // Assumption
R2=1.16*R1;
printf("\n Resistance R2 is = %.1f ohm \n",R2) // Result
R=1/(2*fo*C);
printf("\n Resistance R is = %.1f ohm \n",R) // Result

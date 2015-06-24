// Chapter7
// Page.No-291
// Example_7_16
// Design of triangular wave generator
// Given
clear;clc;
fo=2*10^3; // Frequency of oscillation
vo=7; // Output voltage
Vsat=14; // Saturation voltage for opamp 1458
R3=40*10^3; // Assumption
R2=(vo*R3)/(2*Vsat);
printf("\n Resistance R2 is = %.1f ohm \n",R2) // Result
k=R3/(4*fo*R2); // Using fo=R3/(4*R1*C1*R2),k=R1*C1;
C1=0.05*10^-6; // Assumption
R1=k/C1;
printf("\n Resistance R1 is = %.1f ohm \n",R1) // Result

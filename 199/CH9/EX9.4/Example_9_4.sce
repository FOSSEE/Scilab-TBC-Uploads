// Chapter9
// Page.No-398
// Example_9_4
// Second order butterworth lowpass filter
// Given
clear;clc;
f1=500; // Cut-off freq in Hz
Holp=-2; // Passband gain
R1=10*10^3; // Assumption
R2=-R1*Holp; // Using Holp=-R2/R1;
printf("\n Resistance R2 is = %.1f ohm \n",R2) // Result
Q=0.707; // Figure of merit Q is fixed for second order butterworth low-pass filter
R3=Q*R2; // Using Q=R3/R2
printf("\n Resistance R3 is = %.1f ohm \n",R3) // Approximately 15kohm
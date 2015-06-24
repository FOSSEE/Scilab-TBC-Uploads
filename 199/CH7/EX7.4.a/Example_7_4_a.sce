// Chapter7
// Page.No-256
// Example_7_4_a
// Design of second order low pass filter
// Given
clear;clc;
fh=1*10^3; // Cut-off frequency
C2=0.0047*10^-6; // Assumption
C3=C2;
R2=1/(2*%pi*fh*C2);
printf("\n Resistance R2 is = %.1f ohm \n",R2) // Result
R2=33*10^3; // Approximation
R3=R2;
printf("\n Resistance R3 is = %.1f ohm \n",R3) // Result
R1=27*10^3; // Assumption
Rf=0.586*R1;
printf("\n Resistance Rf is = %.1f ohm \n",Rf) // Result
printf("\n Use 20 kohm POT as Rf \n")
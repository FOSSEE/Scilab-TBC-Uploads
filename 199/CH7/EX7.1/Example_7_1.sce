// Chapter7
// Page.No-256
// Example_7_1
// Design of low pass filter
// Given
clear;clc;
fh=1*10^3; // Cut-off frequency
C=0.01*10^-6; // Assumption
R=1/(2*%pi*fh*C);
printf("\n Resistance R is = %.1f ohm \n",R) // Result
printf("\n Use 20 kohm POT as R \n")
R1=10*10^3; // Assumption
printf("\n Resistance R1 is = %.1f ohm \n",R1)
Rf=R1; // Sice passband gain is 2,R1 and Rf must be equal
printf("\n Resistance Rf is = %.1f ohm \n",Rf)

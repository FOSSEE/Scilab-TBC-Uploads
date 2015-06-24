// Chapter7
// Page.No-263
// Example_7_5_a
// Design of highpass filter
// Given
clear;clc;
fh=1*10^3; // Cut-off frequency
Af=2; // Passband gain of the filter
C=0.01*10^-6; // Assumption
R=1/(2*%pi*fh*C);
printf("\n Resistance R is = %.1f ohm \n",R) // Result
printf("\n Use 20 kohm POT as R \n")
R1=10*10^3; // Assumption
printf("\n Resistance R1 is = %.1f ohm \n",R1)
Rf=R1; // Sice passband gain is 2,R1 and Rf must be equal
printf("\n Resistance Rf is = %.1f ohm \n",Rf)

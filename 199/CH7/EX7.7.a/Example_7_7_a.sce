// Chapter7
// Page.No-270
// Example_7_7_a
// Design of wide bandpass filter
// Given
clear;clc;
fl=200; // Low cutoff freq in Hz
fh=1*10^3; // High cutoff freq in Hz
C1=0.01*10^-6; // Assumption
R1=1/(2*%pi*fh*C1);
printf("\n Resistance R1 is = %.1f ohm \n", R1) // Result
C=0.05*10^-6;
R=1/(2*%pi*fl*C);
printf("\n Resistance R is = %.1f ohm \n", R) // Result
printf("\n Bandpass Gain Af is = 4 \n") // Since gain of high pass and lowpass is set to 2
R1=10*10^3; // Assumption
printf("\n Resistance R1 is = %.1f ohm \n",R1)
Rf=R1; // Sice passband gain is 2,R1 and Rf must be equal
printf("\n Resistance Rf is = %.1f ohm \n",Rf)

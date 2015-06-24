// Chapter7
// Page.No-274
// Example_7_9
// Design of wide bandreject filter
// Given
clear;clc;
fh=200; // Low cutoff freq in Hz
fl=1*10^3; // High cutoff freq in Hz
C2=0.01*10^-6; // Assumption
R2=1/(2*%pi*fl*C2);
printf("\n Resistance R2 of highpass section is = %.1f ohm \n", R2) // Result
C=0.05*10^-6;
R=1/(2*%pi*fh*C);
printf("\n Resistance R of lowpass section is = %.1f ohm \n", R) // Result
printf("\n Bandpass Gain Af is = 4 \n") // Since gain of high pass and lowpass is set to 2
R1=10*10^3; // Assumption
printf("\n Resistance R1 is = %.1f ohm \n",R1)
Rf=R1; // Since passband gain is 2,R1 and Rf must be equal
printf("\n Resistance Rf is = %.1f ohm \n",Rf)

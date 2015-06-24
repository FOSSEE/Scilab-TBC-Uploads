// Chapter6
// Page.No-238
// Example_6_16_a
// Design of differentiator
// Given
clear;clc;
C1=0.1*10^-6; // Assume
fa=1*10^3; // Freq at which gain is 0 dB
Rf=1/(2*%pi*fa*C1); // Using fa=1/(2*%pi*Rf*C1)
printf("\n Feedback resistance is = %.1f ohm \n",Rf)
Rf=1.5*10^3; // Approximation
fb=20*10^3; // Gain limiting freq
R1=1/(2*%pi*fb*C1);
printf("\n Resistance,R1 is = %.1f ohm \n",R1)
R1=82; // Approximation
Cf=R1*C1/Rf;
printf("\n Capacitance,Cf is = %.10f farad \n",Cf)
Cf=0.005*10^-6; // Approximation
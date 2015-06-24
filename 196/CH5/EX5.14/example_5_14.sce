//Chapter 5
//Example 5-14
//ProbOnPhaseAngle 
//Page 140, Figure 5-13(b)
clear;clc;
//Given
f = 10^3 ;
Ri = 100*10^3 ; 
Ci = 0.01*10^-6;
phaseangle = 2*atan(2*%pi*f*Ri*Ci);
printf ("\n\n Phase angle = %.4f radians ", phaseangle)
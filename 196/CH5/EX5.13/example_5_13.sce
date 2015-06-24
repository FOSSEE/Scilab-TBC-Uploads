//Chapter 5
//Example 5-13
//ProbOnPhaseShifter 
//Page 140, Figure 5-13(b)
clear;clc;
//Given
f = 10^3 ; //Frequency of Ei in Hz
Ci = 0.01*10^-6 ; 
m = tan(%pi/4);
Ri = m / (2*%pi*f*Ci);
printf ("\n\n Value of Ri = %.4f ohm ", Ri )
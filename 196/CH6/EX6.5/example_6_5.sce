//Chapter 6
//Example 6-5
//ProbOnDurationOfOutputPulse 
//Page 155
clear;clc;
//Given
Rf = 100*10^3 ;//Feedback Resistance
C = 0.1*10^-6 ;
t = (Rf * C)/ 5 ;
printf ( "\n\n Duration of output pulse of one-shot = %.4f sec ", t )
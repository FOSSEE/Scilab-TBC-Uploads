//Chapter 6
//Example 6-2
//ProbOnMultivibrator 
//Page 151
clear;clc;
//Given
Rf = 100*10^3;//Feedback Resistance
C = 0.1*10^-6 ;
T = 2 * Rf * C;
printf ("\n\n Period = %.4f sec ", T )
//Chapter 8
//Example 8-2
//ProbOnDifferentialAmplifier 
//Page 220,221, Figure 8-5(b)
clear;clc;
//Given
a = 2/9 ; //Differential Gain
E1 = 10*10^-3; E2 = 5*10^-3; //Input Voltages 
Vout = (E1 - E2)*(1+(2/a));
printf ( "\n\n output voltage = %.4f V ", Vout )
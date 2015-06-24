//Chapter 6
//Example 6-7
//ProbOnUnipolarTriangularWaveGenerator 
//Page 159
clear;clc;
//Given
p = 2.8 ;
Vsatm = -13.8 ;
Ri = 28*10^3 ;
C = 0.05*10^-6;
Vut = - ((Vsatm+0.6)/p);
f = p / (2*Ri*C);
printf ( "\n\n Peak Voltage = %.4f V ", Vut )
printf ( "\n\n frequency = %.4f Hz ", f )
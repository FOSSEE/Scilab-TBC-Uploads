//Chapter 6
//Example 6-6
//ProbonTriangularGenerator 
//Page 157,158, Figure 6-6
clear;clc;
//Given
Vsatm = -13.8 ; 
Vut = 5 ; //Upper Threshold Voltage
R = 10*10^3 ;
f = 1000;//Frequency
C = 0.05*10^-6 ;
p = -Vsatm / Vut ;
p1 = p * R ;
Ri = p / (4*f*C); 
printf ( "\n\n Value of p = %.4f ", p )
printf ( "\n\n Value of p1 = %.4f ", p1 )
printf ( "\n\n Value of Ri = %.4f ", Ri )
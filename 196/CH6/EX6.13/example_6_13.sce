//Chapter 6
//Example 6-13
//ProbOnFrequency 
//Page 173,174, Figure 6-12(a)
clear;clc;
//Given
R1 = 10*10^3 ;
R2 = 100*10^3 ;
C = 0.025*10^-6;
f1 = 1 / (4*R1*C) ;
f2 = 1 / (4*R2*C) ;
printf ( "\n\n Frequency when Ri is 10KiloOhm is %.4f Hz " , f1 )
printf ( "\n\n Frequency when Ri is 100KiloOhm is %.4f Hz " , f2 )
 
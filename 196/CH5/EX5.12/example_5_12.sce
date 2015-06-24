//Chapter 5
//Example 5-12
//ProbonCurrentDivider 
//Page 138, Figure 5-12
clear;clc;
//Given
Im = 100*10^-6;//Meter current 
Isc = 0.5;// Current in short-circuit condition
Rf = 20 ; // Feedback resistance
Rm = 0.8*10^3 ; //Meter resistance
d = Isc / Im ;//Current divider
R1 = d * Rf ;
Rscale = R1 - Rm ;
printf ( "\n\n Resistance dRf = %.4f ohm ", R1 )
printf ( "\n\n Rscale = %.4f ohm ", Rscale )
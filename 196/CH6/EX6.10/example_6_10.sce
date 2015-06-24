//Chapter 6
//Example 6-10
//ProbOnFrequency 
//Page 164
clear;clc;
//Given
Ri = 10*10^3 ;
Ci = 0.1*10^-6 ;
Ei = 2 ;
Vref = 2 ;
f = Ei / (Ri*Ci*Vref) ;
printf ( "\n\n Frequency is %.4f Hz ", f )
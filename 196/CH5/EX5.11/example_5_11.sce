//Chapter 5
//Example 5-11
//ProbOnOpticalCoupler 
//Page 136, Figure 5-10
clear;clc;
//Given
R = 1*10^3;
R1 = 99*10^3 ; 
m = R1 / R ; //multiplier
Isc = 10*10^-6; //Current on short-circuit condition
Il = (1 + m)*Isc ;
printf ( "\n\n Load current = %.4f A ", Il)
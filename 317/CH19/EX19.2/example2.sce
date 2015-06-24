// find closed-loop input impedance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 19-2, page 713

clear; clc; close;

// Given data
R1=10^2;// in ohms from the given figure
Rf=3.9*10^3;// in ohms from the given figure
Avol=10^5;// Avol of 741C
Rin=2*10^6;// in ohms
Rcm=200*10^6;// in ohms

// Calculations
B=R1/(R1+Rf);// feedback fraction
zincl=(1+(Avol*B))*Rin;// closed-loop input impedance in ohms
// as zincl>100 Mega ohms
zincl=Rcm*zincl/(zincl+Rcm)
disp("ohms",zincl,"closed-loop input impedance=")

// Result
// closed-loop input impedance is 192 Mohms
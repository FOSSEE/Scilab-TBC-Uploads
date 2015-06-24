// Exa 3.21
format('v',6)
clc;
clear;
close;
// Given data
D_n = 25;// in cm^2/sec
q = 1.6 * 10^-19;// in C
y2 = 10^14;// in /cm^3
y1 = 0;// in /cm^3
x2 = 0;//in  µm
x1 = 0.5;// in µm
x1 = x1 * 10^-4;// in cm
dnBYdx = abs((y2-y1)/(x2-x1));// in /cm^4 
// The collector current density 
J_n = q * D_n * (dnBYdx);// in /cm^4
J_n = J_n * 10^-1;// in A/cm^2
disp(J_n,"The collector current density in A/cm^2 is");

// Note: In the book, the calculated value of dn by dx (2*10^19) is wrong. Correct value is 2*10^18 so the answer in the book is wrong.

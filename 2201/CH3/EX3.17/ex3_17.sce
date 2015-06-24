// Exa 3.17
clc;
clear;
close;
// Gievn data
D_n = 35;// in cm^2/sec
q = 1.6*10^-19;// in C
y2 = 6*10^16;// in /cm^3
y1 = 10^17;// in /cm^3
x2 = 2*10^-4;
x1 = 0;
dnBYdx = (y2-y1)/(x2-x1);
J_n = q*D_n*dnBYdx;// in A/cm^2
disp(J_n,"The current density in A/cm^2 is"); 

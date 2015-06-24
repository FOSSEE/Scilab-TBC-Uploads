// Exa 3.17
format('v',6)
clc;
clear;
close;
// Given data
y2 = 6 * 10^16;// in /cm^3
y1 = 10^17;// in /cm^3
x2 = 2;// in µm
x1 = 0;// in µm
D_n = 35;// in cm^2/sec
q = 1.6 *10^-19;// in C
dnBYdx = (y2 - y1)/((x2-x1) * 10^-4);
J_n = q * D_n * dnBYdx;// in A/cm^2
disp(J_n,"The current density in silicon in A/cm^2 is");

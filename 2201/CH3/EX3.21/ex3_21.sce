// Exa 3.21
clc;
clear;
close;
// Given data
y2 = 10^14;// in /cm^3
y1 = 0;
x1=-0.5;// in µm
x1= x1*10^-4;// in cm
x2=0;
dnBYdx = (y2-y1)/(x2-x1);// in /cm^4
q = 1.6*10^-19;// in C
D_n = 25;// in cm^2/sec
J_n = q*D_n*dnBYdx;// in A/cm^2
disp(J_n,"The collector current density in A/cm^2 is");

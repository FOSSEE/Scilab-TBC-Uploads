//Example 12 // Frequency
clc;
clear;
close;
//given data :
C=10^-6;// in F
L=0.2;// in H
R=800;// in ohm
Rm=2*sqrt(L/C);
n=sqrt((1/(L*C))-(R^2/(4*L^2)))/(2*%pi);
disp(n,"The frequency,n(cycles/s) = ")

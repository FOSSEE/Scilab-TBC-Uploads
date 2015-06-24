//Example 2.8 // the density of magnetic field
clc;
clear;
close;
//given data :
Va=6000; // in volts
l=.033; // in m
L=.22; // in m
D=0.044; // in m
m=9.109*10^-31; // in kg
e=1.602*10^-19;
A=sqrt(e/(2*m*Va));
C=(L*l*A);
B=(D/C)*10^3;
disp(B,"the density magnetic field,B(mWb/m^2) = ")


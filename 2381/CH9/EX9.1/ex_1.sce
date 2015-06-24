//Example 1 // Pressure amplitude, Energy density and Energy flux
clc;
clear;
close;
//given data :
A=1*10^-5;// in m
n=500;// in per sec
v=340;// in m/s
p=1.29;// in kg/m^3
Pa=2*%pi*n*v*p*A;
disp(Pa,"Pressure amplitude,Pa(N/m^2) = ")
Ed=2*%pi^2*n^2*p*A^2;
disp(Ed,"Energy density,Ed(J/m^3) = ")
Ev=Ed*v;
disp(Ev,"Energy flux,Ev(J/m^2-s) = ")

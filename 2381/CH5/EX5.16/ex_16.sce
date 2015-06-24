//Example 16 // Pressure amplitude, Energy density and energy flux
clc;
clear;
close;
//given data :
a=10^-5;// in m
n=500;// in per sec
p=1.29;// in kg/m^3
v=340;// in m/s
Pa=2*%pi*a*n*v*p;
disp(Pa,"(i).Pressure amplitude,Pa(N/m^2) = ")
Ed=2*%pi^2*a^2*n^2*p;
disp(Ed,"(ii). Energy density,Ed(J/m^3) = ")
Ef=2*%pi^2*a^2*n^2*p*v;
disp(Ef,"(iii). The energy flux,Ef(J/m^2-s) = ")

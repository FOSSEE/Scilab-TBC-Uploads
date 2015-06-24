//Find contribution of particles
//Ex:12.5
clc;
clear;
close;
g=41*10^9;//in N/m^2
b=0.64*10^-9;//in m
l=20*10^-6;//in m
t=g*b/l;//in N/m^2
T=t*10^-6;//in MPa
disp(T,"Contribution of these particles (in MPa) = ");

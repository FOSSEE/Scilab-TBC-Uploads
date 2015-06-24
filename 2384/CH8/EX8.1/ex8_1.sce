// Exa 8.1
clc;
clear;
close;
format('v',6)
// Given data
a = 3;// in cm^2
a = a * 10^-4;// in m^2
d = 20;// in cm
N = 500;
phi = 0.5*10^-3;// in Wb
miu_r = 833.33;
miu_o = 4*%pi*10^-7;
l = %pi*d;// in cm  
l = l * 10^-2;// in m
S = l/(miu_o*miu_r*a);// in AT/Wb
//Calculation of the current with the help of flux
//Formula  phi = (m*m*f)/S = (N*I)/S;
I = (phi*S)/N;// in A
disp(I,"The current in A is");

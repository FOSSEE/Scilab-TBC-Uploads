// Exa 1.15
clc;
clear;
close;
format('e',9)
// Given data
V = 1;// in V
I = 8;// in mA
I = I * 10^-3;// in A
R = V/I;// in ohm
l = 2;// in mm
l = l * 10^-1;// in cm
b = 2;// in mm
b = b * 10^-1;// in cm
A = l*b;// in cm^2
L = 2;// in cm
// R = (rho*L)/A;
sigma = L/(R*A);// in (ohm-cm)^-1
// n = N_D;
miu_n = 1300;// in cm^2/V-s
q = 1.6 * 10^-19;// in C
// sigma = n*q*miu_n;
N_D = sigma/( miu_n*q );// in /cm^3
disp(N_D,"The doping level in /cm^3 is");
d = 2;
E = V/d;
// The drift velocity 
Vd = miu_n * E;// in cm/s
disp(Vd,"The drift velocity in cm/sec is");

// Exa 1.25
clc;
clear;
close;
format('v',5)
// Given data
Nd = 10^18;
R = 10;// in ohm
A =10^-6;// in cm^2
L = 10;// in mm
L = L * 10^-4;// in cm
miu_n = 800;// in cm^2/V-s
q = 1.6*10^-19;// in C
//Formula used, n = L/(q*miu_n*A*R)
n = L/(q*miu_n*A*R);// in cm^-3
// The percentage doping efficiency 
doping = (n/Nd)*100;// % doping efficiency in %
disp(doping,"The percentage doping efficiency in % is");

// Exa 1.6
clc;
clear;
close;
format('v',9)
// Given data
l = 1;// in cm
l = l * 10^-2;// in m
A = 1;// in mm^2
A = A * 10^-6;// in m^2
R = 100;// in ohm
rho = (R*A)/l;// in ohm-m
sigma = 1/rho;
e = 1.6*10^-19;// in C
miu_e = 1350;// in cm^2/V-s
miu_e = miu_e * 10^-4;// in m^2/V-s
n = sigma/(e*miu_e);// in /m^3
disp(n,"The dopant density in /m^3");

// Note: The unit of the answer is wrong because 0.0463*10^23/m^3 = 4.63*10^21/m^3, not in /cm^3

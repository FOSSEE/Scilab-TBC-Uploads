// Exa 1.12
clc;
clear;
close;
format('v',5)
// Given data
d = 5.0*10^22;// in atoms/cm^3
impurity = 10^8;// in atoms
N_D = d/impurity;
n_i = 1.45*10^10;
n = N_D;
//Low of mass action,  n*p = (n_i^2);
p = (n_i^2)/n;// in /cm^3
q = 1.6*10^-19;// in C
miu_n = 1300;// in cm/V-s
n_i = n;
//The Conductivity
sigma = q*miu_n*n_i;// in (ohm-cm)^-1
// The resistivity
rho = 1/sigma;// in ohm-cm
disp(rho,"The resistivity in ohm-cm is");

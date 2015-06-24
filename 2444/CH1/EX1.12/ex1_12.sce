// Exa 1.12
clc;
clear;
close;
format('v',7)
// Given data
n_i = 2.5*10^13;// in /cm^3
miu_e = 3800;//in cm^2/V-s
miu_h = 1800;// in m^2/V-s
e = 1.6*10^-19;// in C
sigma_i = n_i*e*(miu_e+miu_h);// in (ohm-cm)^-1
disp(sigma_i,"The intrinsic conductivity in (ohm-cm)^-1 is");
n = 4.4*10^22;
impurity = 10^-7;
N_D = n*impurity;// in /cm^3
n = N_D;// in /cm^3
p = (n_i^2)/N_D;// in holes/cm^3
sigma_n = e*N_D*miu_e;// in (ohm-cm)^-1
disp(sigma_n,"The conductivity in N-type Ge semiconductor in (ohm-cm)^-1 is");

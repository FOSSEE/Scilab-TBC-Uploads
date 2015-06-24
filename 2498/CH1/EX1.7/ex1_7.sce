// Exa 1.7
clc;
clear;
close;
format('v',6)
// Given data
miu_n = 3800;// cm^2/V-s
miu_p = 1800;//  cm^2/V-s
n_i = 2.5*10^13;// in /cm^3
Nge = 4.41*10^22;// in /cm^3
q = 1.602*10^-19;// in C
impurity = 10^8;
// The number of donor atoms,
N_D = Nge/impurity;//in /cm^3
// The number of holes
p = (n_i^2)/N_D;// in /cm^3
// Conductivity of an N-type Ge,
sigma = q*N_D*miu_n;// in (ohm-cm)^-1
// The resistivity of the Ge
rho = 1/sigma;// in ohm-cm
disp(rho,"The resistivity of a dopped Ge in ohm-cm is");

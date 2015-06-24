// Exa 1.8
clc;
clear;
close;
format('e',8)
// Given data
Nsi = 4.96*10^22;// in /cm^3
n_i = 1.52*10^10;// in /cm^2
q = 1.6*10^-19;// in C
miu_n = 0.135;// in  m^2/V-s
miu_n = miu_n * 10^4;// in  cm^2/V-s
miu_p = 0.048;// in  m^2/V-s
miu_p = miu_p * 10^4;// in  cm^2/V-s
// The conductivity of an intrinsic silicon,
sigma = q*n_i*(miu_n+miu_p);// in (ohm-cm)^-1
// The resistivity of intrinsic silicon 
rho = 1/sigma;// in ohm-cm
disp(rho,"The resistivity of intrinsic silicon in ohm-cm is");
format('v',5)
impurity = 50*10^6;
// The number of donor atoms,
N_D = Nsi/impurity;// in /cm^3
// Total free electrons,
n = N_D;// in /cm^3
// Total holes in a doped Si,
p = (n_i^2)/n;// in /cm^3
// Conductivity of a doped Si,
sigma = q*n*miu_n;// in (ohm-m)^-1
// The resistivity of doped silicon
rho = 1/sigma;// in ohm-cm
disp(rho,"The resistivity of doped silicon in ohm-cm is");

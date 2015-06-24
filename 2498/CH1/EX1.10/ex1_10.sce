// Exa 1.10
clc;
clear;
close;
format('v',7)
// Given data
n_i = 1.5*10^16;//m^3
impurity = 10^20;
minority = (n_i^2)/impurity;// in atoms/m^3
q = 1.6*10^-19;// in C
rho = 2*10^3;// in ohm-m
// The miniority carrier concentration 
miu_n = 1/(q*rho*n_i*2);//  in m^2/V-s
disp(miu_n,"The miniority carrier concentration in m^2/V-s is");
n = impurity;
// The conductivity,
sigma = q*impurity*miu_n;// in (ohm-m)^-1
// The resistivity 
rho = 1/sigma;// in  ohm-m
disp(rho,"The resistivity in ohm-m is");
kT = 0.026;// in eV
n_o = n;
// The position of Fermi level 
E_FdividedEi = kT*log(n_o/n_i);// in eV
disp(E_FdividedEi,"The position of Fermi level in eV is : ");
format('e',8)
// Minority carrier concentration 
M = ((n_i*2)^2)/n_o;// in atoms/cm^3
disp(M,"Minority carrier concentration in atoms/cm^3 is");

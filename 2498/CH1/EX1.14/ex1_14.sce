// Exa 1.14
clc;
clear;
close;
format('v',6)
// Given data
n_i = 1.5*10^10;// in electrons/cm^3
N_D = 10^17;// in electrons/cm^3
n = N_D;// in electrons/cm^3
// The minority carrier concentration
p = (n_i^2)/n;// in holes/cm^3
disp(p,"The minority carrier concentration in holes/cm^3 is");
kT = 0.026;
// The location of Fermi level 
E_FminusEi = kT*log(N_D/n_i);// in eV
disp(E_FminusEi,"The location of Fermi level in eV is");

//Exa1.18.3
clc;
clear;
close;
// Given data
T1 = 300;// in K
T2 = 400;// in K
del_E = 0.27;// Fermi level in eV
KT = (0.0259) * (T2/T1);// in eV
N_v = 1.04 * 10^19;// in cm^-3
N_v = N_v * (T2/T1)^(3/2);// in cm^-3 
p_o = N_v * exp(-(del_E)/KT);// in per cm^3
disp(p_o,"The thermal equilibrium hole concentration in per cm^3 is");

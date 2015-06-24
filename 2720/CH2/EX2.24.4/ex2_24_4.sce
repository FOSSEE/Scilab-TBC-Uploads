//Exa 2.24.4
clc;
clear;
close;
// Given data 
N_V = 1.04 * 10^19;// in cm^-3
T1 = 300;// in K
T2 = 400;// in K
del_E = 0.27;// in eV
N_V = N_V * (T2/T1)^1.5;// in cm^-3
KT = (0.0259) * (T2/T1);// in eV
P_o = N_V * exp(-(del_E)/KT);// in cm^-3
disp(P_o,"The thermal equilibrium hole concentration in silicon in cm^-3 is ");


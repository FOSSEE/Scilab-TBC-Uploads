// Exa 4.16.15
clc;
clear;
close;
// Given data
t = 4.4 * 10^22;// in total number of atoms/cm^3
n = 1 * 10^8;// number of impurity
N_A = t/n;// in atoms/cm^3
N_A = N_A * 10^6;// in atoms/m^3
N_D = N_A * 10^3;// in atoms/m^3
V_T = 26;// in mV
V_T = V_T * 10^-3;// in V
n_i = 2.5 * 10^19;// in /cm^3
V_J = V_T * log((N_A * N_D)/(n_i)^2);// in V
disp(V_J,"The junction potential in V is")

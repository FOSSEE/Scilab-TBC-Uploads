// EXa 3.10.1
clc;
clear;
close;
// Given data
t = 4.4 * 10^22;// total number of Ge atoms/cm^3
n = 1 * 10^8;// number of impurity atoms
N_A = t/n;// in atoms/cm^3
N_A = N_A * 10^6;// in atoms/m^3
N_D = N_A * 10^3;// in atoms/m^3
n_i = 2.5 * 10^13;// in atoms/cm^3
n_i = n_i * 10^6;// in atoms/m^3
V_T = 26;//in mV
V_T= V_T*10^-3;// in V
V_J = V_T * log((N_A * N_D)/(n_i)^2);// in V
disp(V_J,"The contact potential in V is");
// Part (b)
t = 5* 10^22;// total number of Si atoms/cm^3
N_A = t/n;// in atoms/cm^3
N_A = N_A * 10^6;// in atoms/m^3
N_D = N_A * 10^3;// in atoms/m^3
n_i = 1.5 * 10^10;// in atoms/cm^3
n_i = n_i * 10^6;// in atoms/m^3
V_T = 26;//in mV
V_T= V_T*10^-3;// in V
V_J = V_T * log((N_A * N_D)/(n_i)^2);// in V
disp(V_J,"The contact potential  in V is");

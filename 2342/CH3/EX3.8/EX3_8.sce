// Exa 3.8
format('v',5)
clc;
clear;
close;
//Given data
n_i = 2.5 * 10^13;
Mu_n = 3800;
Mu_p = 1800;
q = 1.6 * 10^-19;// in C
Sigma = n_i * (Mu_n + Mu_p) * q;// in (ohm-cm)^-1
Rho = 1/Sigma;// in ohm-cm
Rho= round(Rho);
disp(Rho,"The resistivity of intrinsic germanium in ohm-cm is");
N_D = 4.4 * 10^22/(1*10^8);// in atoms/cm^3
Sigma_n = N_D * Mu_n * q;// in (ohm-cm)^-1
Rho_n = 1/Sigma_n;// in ohm-cm
disp(Rho_n,"If a donor type impurity is added to the extent of 1 atom per 10^8 Ge atoms, then the resistivity drops in ohm-cm is");

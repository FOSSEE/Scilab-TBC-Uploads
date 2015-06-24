// Exa 3.4
format('v',7)
clc;
clear;
close;
// Given data
K = 1.38 * 10^-23;// in J/K
T = 27;// in degree
T = T + 273;// in K
e = 1.6 * 10^-19;// in C
Mu_e = 0.17;// in m^2/v-s
Mu_e1 = 0.025;// in m^2/v-s
D_n = ((K * T)/e) * Mu_e;// in m^2/s
disp(D_n,"The diffusion coefficient of electrons in m^2/s is");
D_p = ((K * T)/e) * Mu_e1;// in m^2/s
disp(D_p,"The diffusion coefficient of  holes in m^2/s is ");

// Exa 7.2
clc;
clear;
close;
// Given data
N_A = 7.5*10^24;// in atoms/m^3
N_D = 1.5*10^22;// in atoms/m^3
D_e = 25*10^-4;// in m^2/s
D_n = 1*10^-3;// in m^2/s
V_T = 26*10^-3;// in V
Torque_eo = 500*10^-9;// in sec
Torque_ho = 100*10^-9;// in sec
e = 1.6*10^-19; // in C
n_i = 1.5*10^16;// in /m^3
I_lambda = 12.5;// in mA/cm^2
I_lambda= I_lambda*10^-3;// in A/cm^2
L_e = sqrt(D_e*Torque_eo);// in m
L_n = sqrt(D_n*Torque_ho);// in m
J_s = e*((n_i)^2)*( ((D_e)/(L_e*N_A)) + ((D_n)/(L_n*N_D)) );// in A/m^2
J_s= J_s*10^-4;// in A/cm^2
V_OC = V_T*(log(1+(I_lambda/J_s)));// in V
disp(V_OC,"Open circuit voltage in volts is");

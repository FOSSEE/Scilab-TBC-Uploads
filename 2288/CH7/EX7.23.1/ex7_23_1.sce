// Exa 7.23.1
clc;
clear;
close;
// Given data
N_A = 7.5*10^24;// in atoms/m^3
N_D = 1.5*10^22;// in atoms/m^3
I_lembda = 12.5*10^-3;// in A/cm^2
D_e = 25*10^-4;// in m^2/s
D_h = 1*10^-3;// in m^2/s
Torque_eo = 500;// in ns
Torque_ho = 100;// in ns
n_i = 1.5*10^16;// in /m^3
e = 1.6*10^-19;
P_C = 12.5;// in mA/cm^2
L_e = sqrt(D_e*Torque_ho*10^-9);// in m
L_e = L_e * 10^6;// in µm
L_h = sqrt(D_h*Torque_ho*10^-9);// in m
L_h = L_h * 10^6;// in µm
J_s = e*((n_i)^2)*( (D_e/(L_e*10^-6*N_A)) + (D_h/(L_h*10^-6*N_D)) );// in A/m^2
J_s = J_s * 10^-4;// in A/cm^2
V_T = 26;// in mV
V_OC = V_T*log( 1+(I_lembda/J_s) );// in mV
V_OC = V_OC * 10^-3;// in V
disp(V_OC,"Open circuit voltage in V is");

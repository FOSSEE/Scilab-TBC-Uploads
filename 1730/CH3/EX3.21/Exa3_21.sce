//Exa3.21
clc;
clear;
close;
// given data
T=27;// in degree C
T=T+273;// in K
// Let E_C - E_F =E_CF
E_CF=0.3;// in eV
// Formula E_C - E_F = k*T*log(n_C/N_D)
// Let log(n_C/N_D) = L, so
L=E_CF/T;
T_desh=55;// in degree C
T_desh=T_desh+273;// in K
//At temperature T_desh
new_fermi_level= T_desh*L;  // where L=log(n_C/N_D)
disp("The new position of Fermi Level is : "+string(new_fermi_level)+" V");
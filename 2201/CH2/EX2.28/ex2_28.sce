// Exa 2.28
clc;
clear;
close;
// Given data
n_o = 10^15;// in cm^-3
n_i = 10^10;// in cm^-3
p_o = 10^5;// in cm^-3
del_p = 10^13;// in cm^-3
del_n = del_p;// in cm^-3
KT= 0.0259;// in eV
Fermi_level= KT*log(n_o/n_i);// in eV
disp(Fermi_level,"Fermi level for thermal equillibrium in eV is :")
Fermi_level= KT*log((n_o+del_n)/n_i);// in eV
disp(Fermi_level,"Quasi-Fermi level for electrons in non equillibrium in eV is :")
Fermi_level= KT*log((p_o+del_p)/n_i);// in eV
disp(Fermi_level,"Quasi-Fermi level for holes in non equillibrium in eV is :")

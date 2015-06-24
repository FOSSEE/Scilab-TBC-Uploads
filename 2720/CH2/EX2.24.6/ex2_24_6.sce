//Exa 2.24.6
clc;
clear;
close;
//Given data
T = 300;// in K
n_o = 10^15;// in cm^-3
n_i = 10^10;// in cm^-3
p_o = 10^5;// in cm^-3
del_n = 10^13;// in cm^-3
del_p = del_n;// in cm^-3
KT = 0.0259;// in eV
delta_E1= KT*log(n_o/n_i);// value of E_F-E_Fi in eV
delta_E2= KT*log((n_o+del_n)/n_i);// value of E_Fn-E_Fi in eV
delta_E3= KT*log((p_o+del_p)/n_i);// value of E_Fi-E_Fp in eV
disp(delta_E1,"The Fermi level for thermal equillibrium in eV is : ")
disp(delta_E2,"The quase-Fermi level for electrons in non equillibrium in eV is : ")
disp(delta_E3,"The quasi-Fermi level for holes in non equillibrium in eV is : ")
disp("The quasi-Fermi level for electrons is above E_Fi ")
disp("While the quasi-Fermi level for holes is below E_Fi")

//Exa 1.18.1
clc;
clear;
close;
// Given data
del_E = 0.3;// in eV
T1 = 300;// in K
T2 = 330;// in K
// del_E = K * T1 * log(N/N_c) where del_E= E_C-E_F
// del_E1 = K * T2 * log(N/N_c) where del_E1= E_C-E_F at T= 330 °K
del_E1 = del_E*(T2/T1);// in eV 
disp("The Fermi level will be "+string(del_E1)+" eV below the conduction band")

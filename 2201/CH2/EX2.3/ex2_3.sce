// Exa 2.3
clc;
clear;
close;
// Given data
del_E = 0.3;//value of E_C-E_F in eV
T1 = 330;// in K
T = 300;// in K
del_E1 = del_E*(T1/T);//value of E_C-E_F in eV
disp(del_E1,"The position of fermi level in eV is");
disp("Hence the Fermi level will be "+string(del_E1)+" eV below the conduction band")

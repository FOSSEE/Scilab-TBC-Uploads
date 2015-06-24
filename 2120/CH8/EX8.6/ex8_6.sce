// Exa 8.6
clc;
clear;
close;
// Given data
h_i = 749.2;
h_o = 25.03;
T_o = 298;// in K
s_i = 1.6202;
s_o = 0.0877;
phi_i = (h_i - h_o)- (T_o * (s_i - s_o));// kcal/kg
disp(phi_i,"The availablibity before adiabatic throttling in kcal/kg is : ");
h_e = 749.2;
s_e = 1.6936;
phi_e = (h_e - h_o) - (T_o * (s_e - s_o));// in kcal/kg
disp(phi_e,"The availablibity before adiabatic throttling in kcal/kg is : ");
Wrev = phi_i - phi_e;// in kcal/kg
disp(Wrev,"Reversible work in kcal/kg is : ");
Wactual = 0;
i = Wrev-Wactual;// in kcal/kg
disp(i,"Irreversibility per kg of steam in kcal/kg is : ");



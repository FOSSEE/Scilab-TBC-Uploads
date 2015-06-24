// Exa 6.20
clc;
clear;
close;
// Given data
P1 = 7+ 1;// in bar
H = 2767;// Enthalpy in kJ/kg
P2 = 1.5+1;// in bar
H1 = 2717;// enthalpy of 1kg of dry steam in kJ/kg
H_sup = H - H1;// Superheated of 1kg of steam in kJ
S1 = 2.17;// super heated steam in kJ/kg-K
theta = H_sup/S1;// in degree C
T_sat = 127.4;// in degree C
T_sup = T_sat + theta;// in degree C
disp(T_sup,"The super heated temperature in degree C is");

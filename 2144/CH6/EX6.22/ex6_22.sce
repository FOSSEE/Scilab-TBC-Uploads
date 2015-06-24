// Exa 6.22
clc;
clear;
close;
// Given data
T = 20;// in degree C
H1 = 3039;// Enthalpy in kJ/kg
H2 = 2725;// Enthalpy of 1kg dry saturated steam
H_sup = H1-H2;// superheat of 1kg of steam in kJ/kg
H= 2621.4;// heat required for 1kg or water in kJ
m = H_sup/H;// in kg
disp(m,"Quantity of water in kg is");

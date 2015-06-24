// Exa 1.12
clc;
clear;
close;
// Given data
E_air = 200-100;// in kJ/kg
E_lost = 40;// in kJ/kg
E_total = E_air + E_lost;// in kJ per kg
M = 0.5;// mass flow rate in kg per s
P = M * E_total;// in kJ/s
disp(P,"Power required for an air mass flowin kJ/s is :");

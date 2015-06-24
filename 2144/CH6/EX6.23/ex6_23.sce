// Exa 6.23
clc;
clear;
close;
// Given data
x = 0.9;
h_f1 = 1087.4;// in kJ/kg
h_fg1 = 1712.9;// in kJ/kg
H_wet1 = h_f1 + (x*h_fg1);// in kJ/kg
H_sup2 = 3095;// in kJ/kg
H = H_sup2 - H_wet1;// in kJ/kg
disp(H,"Heat recieved in kJ/kg is");

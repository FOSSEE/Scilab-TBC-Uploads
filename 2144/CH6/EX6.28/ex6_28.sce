// Exa 6.28
clc;
clear;
close;
// Given data
h_f1 = 670;// in kJ/kg
h_fg1 = 2085;// in kJ/kg
h_f2 = 475;// in kJ/kg
h_fg2 = 2221;// in kJ/kg
P2 = 6*10^2;// in kJ/kg 
P1 = 1.6*10^2;// in kJ/kg
n = 1.1;
x1 = 0.9;
V1 = 0.3159;// in m^3
V2 = 1.092;// in m^3
H_wet = h_f1 + (x1*h_fg1);// in kJ/kg
V_wet1 = x1*V1;// in m^3
V_wet2 = V_wet1*(P2/P1)^(1/n);// in m^3
x2 = V_wet2/V2;
H_wet2 = h_f2 + (x2*h_fg2);// in kJ/kg
U2= H_wet2-H_wet+P2*V_wet1-P1*V_wet2;// in kJ/kg
W= (P2*V_wet1-P1*V_wet2)/(n-1);// in kJ/kg
Q= U2+W;// in kJ/kg
disp(Q,"Heat recieved by steam in kJ/kg is");

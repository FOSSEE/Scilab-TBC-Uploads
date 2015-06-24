// Exa 6.26
clc;
clear;
close;
// Given data
x1 = 0.95;
P1 = 9;// in bar
P1= P1*10^2;// in kN/m^2
h_f1 = 743;// in kJ/kg
h_fg1 = 2030;// in kJ/kg
V = 0.204;// in m^3
x2 = 0.544
P2 = 5;// in bar
P2= P2*10^2;// in kN/m^2
h_f2 = 640;// in kJ/kg
h_fg2 = 2108;// in kJ/kg
H_wet1 = h_f1 + (x1*h_fg1);// in kJ/kg
disp(H_wet1,"Total energy in kJ/kg is");
U1 = H_wet1 - P1*V;// in kJ/kg
disp(U1,"The internal energy in kJ/kg is : ")
V_g1 = 0.204;// in m^3
V1 = 0.3753;//volume of 1kg of dry stream in m^3
x2 = V_g1/V1;
H_wet2 = h_f2 + (x2*h_fg2);// in kJ
U2 = H_wet2 - P2*V;// in kJ
del_U = U1-U2;// in kJ
H = del_U/V;// in kJ
disp(H,"Heat removed from 1 m^3 of steam in kJ is");

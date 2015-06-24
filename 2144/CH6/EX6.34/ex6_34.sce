// Exa 6.34
clc;
clear;
close;
// Given data
P1 = 15;// in bar
H1 = 3039;// in kJ/kg
V_g1 = 0.1697;// in m^3/kg
Phi1 = 6.919;// in kJ/kg-K
P2_desh = 3.5*10^2;// in kN/m^2
Phi_g2 = 6.941;// in kJ/kg-K
Phi_f2 = 1.727;// in kJ/kg-K
P2 = 0.15*10^2;// in kN/m^2
h_f2 = 232;// in kJ/kg
x = (Phi1-Phi_f2)/(Phi_g2 - Phi_f2);
h_f = 584;// in kJ/kg
h_fg = 2148;// in kJ/kg
H2 = h_f + (x*h_fg);// in kJ/kg
V = 0.5241;// in m^3
V2=x*V;// in m^3/kg
W = (H1-H2) + (P2_desh-P2)*V2;//work output of the cycle in kJ/kg
Eta = W/(H1-h_f2)*100;// in %
disp(Eta,"The efficiency of the cycle in % is");
Energy_equivalent= 3600;// in kJ
S_consumption = Energy_equivalent/W;// in kg
V = S_consumption* V_g1;// in m^3
disp(V,"Total volume of steam in m^3 is");

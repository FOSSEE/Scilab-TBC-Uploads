// Exa 6.13
clc;
clear;
close;
// Given data
P1 = 7;// in bar
P2 = 1.2;// in bar
h_f1 = 696.9;// in kJ/kg
h_fg1 = 2065;// in kJ/kg
h_g2 = 2684.9;// in kJ/kg
T_sup = 112;// in degree C
T_sat = 104.77;// in degree C
C_P = 2.1;// in kJ/kg
x1 = (h_g2+(C_P*(T_sup-T_sat))-h_f1)/h_fg1;
disp(x1,"Dryness fraction of steam is");

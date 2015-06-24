// Exa 6.16
clc;
clear;
close;
// Given data
h_f1 = 232;// in kJ/kg
h_fg = 2369;// in kJ/kg
x = 0.8;
h_f2 = 167.5;// in kJ/kg
H_wet1 = h_f1 + (x*h_fg);// in kJ/kg
H_wet = H_wet1 - h_f2;// in kJ/kg
T1 = 38;// in degree C
T2 = 25;// in degree C
T = T1-T2;// in degree C
SpeHeat = 4.188;// in kJ/kg-K
m = H_wet/(T*SpeHeat);// in kJ/kg
disp(round(m),"The quantity of circulating water required of condensed steam in kJ/kg is");

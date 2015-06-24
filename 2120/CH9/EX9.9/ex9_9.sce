// Exa 9.9
clc;
clear;
close;
// Given data
m = 1;// in kg
p = 10;// in bar
p = p * 10^2;// in kpa
x = 0.94;
h_sen = 762.61;// in kJ/kg
L = 2013.6;// in kJ/kg
v_s = 0.1942;// in m^3 per kg
w_ext = p * x * v_s * m;// in kJ/kg
disp(w_ext,"The work done during evaporation in kJ/kg is");
// Part (b)
L_internal = (x * L) - w_ext;// in kJ/kg
disp(L_internal,"Internal latent heat in kJ/kg is");
// Part (c)
U_wet = h_sen+x*L-p*x*v_s;// in kJ/kg
disp(U_wet,"Internal energy in kJ/kg is");

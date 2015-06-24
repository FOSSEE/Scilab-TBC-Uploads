// Exa 9.10
clc;
clear;
close;
// Given data
T_sat = 179.88;// in degree c
T_sat = T_sat + 273;// in k
T_sup = 200;// in degree c
T_sup = T_sup + 273;// in k
L = 2013.6;// in kJ/kg
C_ps = 2.326;
C_pw = 1;
x = 0.8;
phi_wet = C_pw *log(T_sat/273) + ( (x * L)/T_sat);// in kJ/kg-K
disp(phi_wet,"Entropy of wet steam in kJ/kg-K is");
// Part (b)
phi_dry =C_pw * log(T_sat/273)+L/T_sat;// in kJ/kg
disp(phi_dry,"Entropy of dry and saturated steam in kJ/kg-K is");
// Part (c)
phi_sup = phi_dry+C_ps *log(T_sup/T_sat);// in kJ/kg
disp(phi_sup,"Entropy at 200°C in kJ/kg-K is :");

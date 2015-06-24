// Exa 6.10
clc;
clear;
close;
// Given data
T = 0;// in degree C
T = T + 273;// in K
T_sat = 179.9;// in degree C
T_sat = T_sat + 273;// in K
x = 0.8;
h_fg = 2013.8;// in kJ/kg
c_f = 4.188;
Phi_wet = c_f*log(T_sat/T)+x*h_fg/T_sat;// in kJ/kg-K
disp(Phi_wet,"The entropy of wet steam in kJ/kg-K is");
Phi_g = (c_f*(log(T_sat/T))) + (h_fg/T_sat);// in kJ/kg-K
disp(Phi_g,"The entropy of dry saturated steam in kJ/kg-K is");
C_P = 2.3;
T_sup = 200+273;// in K
Phi = c_f *log(T_sat/T) + h_fg/T_sat+  C_P*log(T_sup/T_sat);// in kJ/kg-K
disp(Phi,"The entropy of superheated steam in kJ/kg-K is");

// Exa 6.11
clc;
clear;
close;
// Given data
T_sat = 198.3;// in degree C
T_sat = T_sat + 273;// in K
T_sup = 300;// in degree C
T_sup = T_sup + 273;// in K
c_f = 4.188;
h_fg = 1945;// in kJ/kg-K
T = 273;// in K
C_P = 2.093;// in kJ/kg-K
Phi_sup =c_f *log(T_sat/T)+h_fg/T_sat+C_P*log(T_sup/T_sat);// in kJ/kg-K
disp(Phi_sup,"The value of specific entropy in kJ/kg-K is");

// Exa 6.7
clc;
clear;
close;
// given data
h_f = 720.7;// in kJ
h_fg = 2046.6;// in kJ
v_g = 0.2405;// in m^3
x = 0.9;
P = 8*10^2;// in kN/m^2
U_sat = h_f+x*h_fg-x*v_g*P;// in kJ
disp(U_sat,"When the steam is wet, the internal energy in kJ is");
En = 2767.3;// Enthalpy of dry saturated stream
U_sat = En-(v_g*P);//in kJ/kg
disp(U_sat,"When the steam is dry and saturated, the internal energy in kJ/kg is");
C_P = 2.093;
del_s = 100;// in degree C
H_sup = h_f + h_fg + (C_P*del_s);// in kJ/kg
t_sat = 170.4+273;// in K
V_sup = (v_g*(t_sat+del_s))/t_sat;// in m^3
U_sup = H_sup - P*V_sup;// in kJ/kg
disp(U_sup,"When the steam is super heated, the internal energy in kJ/kg is");

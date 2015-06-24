// Exa 6.5
clc;
clear;
close;
// Given data
x = 0.9;
h_f = 762.2;// in kJ/kg
h_fg = 2013.8;// in kJ/kg
H_wet = h_f + (x*h_fg);// in kJ/kg
En = 125.7;// Enthapy of liquid in kJ/kg
H_wet = H_wet - En;// in kJ
disp(H_wet,"When dry fraction is 0.9, Heat required, to convert in kJ is");
// Part (b) when dry fraction is saturated
H_sat = h_f + h_fg;// in kJ/kg
H_sat = H_sat-En;// in kJ
disp(H_sat,"Heat required when steam is dry and saturated in kJ is");
C_P = 2.093;// in kJ/kg-K
t_sup = 300;// in degree C
t_sat = 179.9;// in degree C
H_sup = h_f + h_fg + C_P*(t_sup-t_sat);// in kJ
H_sup1 = H_sup - En;// in kJ
disp(H_sup1,"Heat required when the steam is super heated in kJ is");

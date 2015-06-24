// Exa 9.11
clc;
clear;
close;
// Given data
m = 1;// in kg
x = 0.9;
p = 1;// N/mm^2
p = p * 10^1;// in bar
p = p * 10^2;// in kPa
h_sen  = 762.61;// in kJ/kg
L = 2013.6;// in kJ/kg
v_s = 0.1944;// in m^3 per kg
H_totalwet = h_sen + x*L;// in kJ/kg
U_wet = H_totalwet - (p * x * v_s);// in kJ/kg
I = U_wet / H_totalwet;// internal energy as a fraction of total heat
I = I * 10^2;// in %
disp(I,"The internal energy in % is");
// Part (b)
v_s = 0.1542;// in m^3/kg
h_sen = 815;// in kJ/kg
L = 1972;// in kJ/kg
H_totaldry = 2787;// in kJ/kg
C_ps = 2.199;
t_sup = 250;// in °C
t_sup = t_sup + 273;// in K
t_sat = 190.74;// in °C
t_sat = t_sat + 273;// in K
p1 = 13 * 10^2;// in kPa
v_ssup = v_s*t_sup/t_sat;// in m^3/kg
disp(v_ssup,"The volume of superheated steam in m^3/kg is");
// Part (c)
t_sat = t_sat - 273;// in °C
t_sup = t_sup - 273;// in °C
U_sup =h_sen+L+C_ps*(t_sup-t_sat)-p1*v_ssup;// in kJ
del_U =  U_sup -  U_wet;// in kJ
disp(del_U,"Change in internal energy in kJ is :");



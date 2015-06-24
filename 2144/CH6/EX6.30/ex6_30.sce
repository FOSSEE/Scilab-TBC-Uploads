// Exa 6.30
clc;
clear;
close;
// Given data
Cp= 2.3;// in kJ/kg-K
T_sat= 179.9;// in °C
T_sat= T_sat+273;// in K
H= 3052;// enthalpy in kJ/kg
P= 10*10^2;// in kN/m^2
h_f= 763;// in kJ/kg
h_fg= 2015;// in kJ/kg
V= 0.1944;// in m^3
// Formula H= h_f+h_fg*Cp*(t_sup-T_sat)-P*V*(t_sup/T_sat)
t_sup= (h_f+h_fg-Cp*T_sat-H)/(P*V/T_sat-Cp);// in K
t_sup= t_sup-273;// in °C
disp(t_sup,"The final temperature of the steam in °C is : ")

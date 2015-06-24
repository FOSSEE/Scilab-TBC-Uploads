// Exa 9.2
clc;
clear;
close;
// Given data
h_sen = 798.43;// in kJ/kg
L = 1984.3;// in kJ/kg
H_total_wet = 2665.7;
// H_total_wet= h_sen+x*L
x = (H_total_wet - h_sen)/L;
disp(x,"The value of x is :");
// Part (b)
h_total_sup= 2961;// in kJ/kg
Cps= 2.112;// in kJ/kg
H_total_dry= 2782.7;// in kJ/kg
// Let deltaT= T_sup-T_sat
// h_total_sup = h_sen+L+h_sup = H_total_dry +Cps*deltaT
deltaT= (h_total_sup-H_total_dry)/Cps;// in °C
disp(deltaT,"Degree of superheat in °C is :")

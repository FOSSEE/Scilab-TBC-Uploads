// Exa 9.12
clc;
clear;
close;
// Given data
m = 0.5;// in kg
M = 6.6;// in kg
x1 = M / (M+m);
h_dry = 2683;//in kJ/kg
C_p = 2.1;
h_sen = 814.5;//in kJ/kg
L = 1973;// in kJ/kg
t_sup = 120;// in °C
t_sat = 104.8;// in °C
x2 =(h_dry+C_p*(t_sup - t_sat)-h_sen)/ L;
x = x2 * x1;
disp(x,"the dryness fraction of steam is");

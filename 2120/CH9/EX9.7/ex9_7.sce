//Exa 9.7
clc;
clear;
close;
// Given data
W = 21;// in kg
w_wp = 2;// in kg
h1 = 781.15;// in kJ/kg
L1 = 1998.5;// in kJ/kg
m = 2;// in kg
h2 = 420.5;// in kJ/kg
L = 2255.9;// in kJ/kg
t_sat = 100.4;// in degree c
t1 = 110;// in degree c
C_ps = 2;// in kJ/kgK
x1 = W / (W + w_wp);
x2 = (h2 + L + m * (t1-t_sat) - h1)/ L1;
x = x1 * x2;
disp(x,"The dryness fraction for sample steam is");

//Exa 9.8
clc;
clear;
close;
// Given data
h_sen = 417.4;// in kJ/kg
h_totaldry = 2675.4;// in kJ/kg
L = 2258;// in kJ/kg
v = 5;// in m^3
v_v = 4.95;// in m^3
x = v_v/v;
Q = h_totaldry -(h_sen +x*L);// in kJ/kg
disp(Q,"Heat transfered per kg in kJ/kg is : ");

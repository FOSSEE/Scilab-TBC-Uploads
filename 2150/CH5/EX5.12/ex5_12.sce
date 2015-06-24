// Exa 5.12
clc;
clear;
close;
// Given data
r_e = 767.44;
r_e1 = 3.68;
V_in = 1;// in V
A_v = round(r_e/(r_e+r_e1));
disp(A_v,"The voltage gain is : ")
V_o = A_v*V_in;// in V
disp(V_o,"The load voltage in V is");

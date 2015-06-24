// Exa 1.7
clc;
clear;
close;
// Given data
V_i = 12;// in V
V_D1 = 0.7;// in V
V_D2 = 0.3;// in V
R = 5.6*10^3;// in ohm
V_o  = V_i - V_D1 - V_D2;// in V
disp(V_o,"The value of Vo voltage in V is");
I_D = V_o/R;// in A
I_D = I_D*10^3;// in mA
disp(I_D,"The value of I_D in mA is");

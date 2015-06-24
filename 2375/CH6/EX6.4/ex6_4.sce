// Exa 6.4
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 8;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P =-5;// in V
V_GS = -2;// in V
V_DSmin = V_GS - V_P;// in V
disp(V_DSmin,"The minimum value of V_DS in V is");
I_DS = I_DSS*((1 - (V_GS/V_P))^2);// in A
I_DS = I_DS * 10^3;// in mA
disp(I_DS,"The drain current in mA is");

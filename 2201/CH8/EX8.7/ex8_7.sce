// Exa 8.7
clc;
clear;
close;
// Given data
V_GS = -2;// in V
V_P = -5;// in V
V_DS = V_GS-V_P;// in V
I_DSS = 8;// in mA
disp(V_DS,"The minimum value of V_DS in V is");
I_D = I_DSS*((1-(V_GS/V_P))^2);// in mA
disp(I_D,"The drain current in mA is");

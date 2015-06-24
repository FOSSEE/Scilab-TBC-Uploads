// Exa 6.8
clc;
clear;
close;
// Given data
V_P = -4;// in V
V_GS = -2;// in V
I_DSS = 10;// in mA
I_DSS= I_DSS*10^-3;// in A
I_D = I_DSS*(1-(V_GS/V_P))^2;// in A
disp(I_D*10^3,"The drain current in  mA is");
V_DS = V_P;// in V
disp(V_DS,"The minimum value of V_DS in V is ");

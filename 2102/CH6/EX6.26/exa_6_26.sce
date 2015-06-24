// Exa 6.26
clc;
clear;
close;
// Given data
V_P= -5;// in V
I_D= 4;// in mA
V_GS= -2;// in V
// Formula I_D= I_DSS*(1-V_GS/V_P)^2
I_DSS= I_D/(1-V_GS/V_P)^2;// in mA
disp(I_DSS,"The value of I_DSS in mA is :")

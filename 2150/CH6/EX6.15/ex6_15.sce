// Exa 6.15
clc;
clear;
close;
// Given data
I_DSS = 30;// in mA
V_GS = -5;// in V
V_GS_off = -8;// in V
I_D = I_DSS*(1-(V_GS/V_GS_off))^2;// in mA
disp(I_D,"The drain current in mA is");

// Exa 7.5
clc;
clear;
close;
// Given data
I_D = 5;// in mA
V_GS1 = 8;// in V
V_GS2 = 4;// in V
V_GS = 6;// in V
K = I_D/(V_GS1-V_GS2)^2;// in mA/V^2
I_D = K*(V_GS-V_GS2)^2;// in mA
disp(I_D,"The drain current in mA is");

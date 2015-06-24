// Exa 6.9
clc;
clear;
close;
// Given data
I_DSS = -40;// in mA
V_P = 5;// in V
I_D = -15;// in mA
V_GS = V_P*(1-sqrt(I_D/I_DSS));// in V
disp(V_GS,"The gate source voltage in V is");

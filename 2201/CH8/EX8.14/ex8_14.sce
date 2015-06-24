// Exa 8.14
clc;
clear;
close;
// Given data
V_P = -4;// in V
I_DSS = 9;// in mA
V_GS = -2;// in V
I_D = I_DSS*(( 1-(V_GS/V_P) )^2);// in mA
disp(I_D,"The drain current in mA is");

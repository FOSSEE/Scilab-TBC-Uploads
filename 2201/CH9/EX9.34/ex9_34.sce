// Exa 9.34
clc;
clear;
close;
// Given data
V_S2 = -2;// in V
V_GS2 = -V_S2;// in V
I_DS2 = (V_GS2-1)^2;// in mA
I = 2;// in mA
I_DS1 = I-I_DS2;// in mA
disp(I_DS1,"The current flow through M1 MOSFET in mA is");

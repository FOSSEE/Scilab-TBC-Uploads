// Exa 8.3
clc;
clear;
close;
format('v',7)
// Given data
I_Don = 5;// in mA
V_GS = 8;// in V
V_GST = 4;// in V
K = I_Don/((V_GS-V_GST)^2);// in mA/V^2
// Drain current when V_GS= 6 V
V_GS= 6;// in V
I_D = K*((V_GS-V_GST)^2);// in mA
disp(I_D,"The drain current in mA is");

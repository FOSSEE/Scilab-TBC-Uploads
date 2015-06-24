// Exa 8.5
clc;
clear;
close;
// Given data
I_D1 = 10;// in mA
V_GS = -12;// in V
V_GSth = -3;// in V
K = I_D1/( (V_GS-V_GSth)^2 );// in mA/V
V_GS= -6;// in V
I_D = K*((V_GS-V_GSth)^2);// in mA
disp(I_D,"The value of I_D in mA is");

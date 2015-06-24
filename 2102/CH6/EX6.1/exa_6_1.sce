// Exa 6.1
clc;
clear;
close;
// Given data
I_DSS= 10;// in mA
V_P= -4;// in V
 V_GS=[-4:0.1:0];
//V_GS= -3;
I_D= I_DSS*(1-V_GS/V_P)^2
plot(V_GS,I_D);
xlabel("V_GS in volts");
ylabel("I_D in mA")
title("The transfer curve")
disp("Curve is shown in figure")

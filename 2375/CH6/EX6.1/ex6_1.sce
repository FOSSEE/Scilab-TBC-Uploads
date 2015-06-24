// Exa 6.1
clc;
clear;
close;
// Given data
I_DSS = 10;// in mA
V_P = -4;// in V
V_GS= V_P:0.1:0
I_D = I_DSS * ((1 - (V_GS/V_P))^2);// in A
plot(V_GS,I_D);
xlabel("V_GS in volts");
ylabel("I_D in mA")
title("Transfer curve")
disp("The transfer curve shown in the figure.")

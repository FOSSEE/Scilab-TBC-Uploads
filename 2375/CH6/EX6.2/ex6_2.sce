// Exa 6.2
clc;
clear;
close;
// Given data
I_DSS = 4;// in mA
V_P = 3;// in V
V_GS= 0:0.1:V_P
I_D = I_DSS * ((1 - (V_GS/V_P))^2);// in A
plot(V_GS,I_D);
xlabel("V_GS in volts");
ylabel("I_D in mA")
title("Transfer curve")
disp("The transfer curve shown in the figure.")

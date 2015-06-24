// Exa 8.1
clc;
clear;
close;
format('v',6)
// Given data
I_DSS= 10;// in mA
V_P= -4;// in V
V_GS= 0:-0.1:V_P;// in V
// The value of I_D,
I_D= I_DSS*(1-V_GS/V_P)^2;// in mA
plot(V_GS,I_D)
xlabel("V_GS in volts");
ylabel("I_D in mA");
title("Transfer characteristics for an n-channel depletion-type MOSFET");
disp("Transfer characteristics for an n-channel depletion-type MOSFET shown in figure.")

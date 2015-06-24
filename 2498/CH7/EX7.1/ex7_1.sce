// Exa 7.1
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 14;// in mA
V_GSoff = -6;// in V
V_GS= 0:-0.1:V_GSoff;// in V
I_D= I_DSS*(1-V_GS/V_GSoff)^2;// in mA
// Ploting of the dc transfer characteristics
plot(V_GS,I_D);
xlabel("V_GS in volts")
ylabel("I_D in mA")
title("Transfer characteristics of a JFET")
disp("Transfer characteristics of a JFET shown in figure.")

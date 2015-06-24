// Exa 4.21
format('v',6)
clc;
clear;
close;
// Given data
V_CC = 10;// in V
R_C = 10;// in k ohm
R_C = R_C * 10^3;// in ohm
R_B = 100*10^3;// in ohm
Beta_dc = 100;
V_BE = 0.7;// in V
// Applying KVL to input section, V_CC = (I_E*R_E) + (I_B*R_B) + V_BE or
I_C = (V_CC-V_BE)/( R_C + (R_B/Beta_dc) );// in A
V_CE =V_CC - (I_C*R_C);// in V
I_C=I_C*10^3;// in mA
disp("DC load line shown in figure.")
disp("Q-points : "+string(V_CE)+" V, "+string(I_C)+" mA")
I_Csat =V_CC/R_C*10^3;// in mA
V_CEcutoff = V_CC;// in V
plot([V_CEcutoff ,0],[0,I_Csat]);
xlabel("V_CE in volts");
ylabel("I_C in mA")
title("DC load line")

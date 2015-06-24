// Exa 4.10
clc;
clear;
close;
format('v',6)
// Given data
V_BE = 0.6;// in V
V_CE = 0;// in V
R_C = 2;// in k ohm
R_C = R_C * 10^3;// in ohm
V_CC = 9;// in V
Beta= 2;
R_B = 8;// in k ohm
R_B = R_B * 10^3;// in ohm
// V_CC - (I_C*R_C) - V_CE = 0;
I_C = V_CC/R_C;// in A
I_C= I_C*10^3;// in mA
V_CE = V_CC;// in V
plot([V_CE,0],[0,I_C]);
xlabel("V_CE in volts");
ylabel("I_C in mA");
title("DC load line")
I_C= I_C*10^-3;// in A
I_B = (V_CC-V_BE)/R_B;// in A
//Collector emitter voltage, V_CE = V_CC - (I_C*R_C) = V_CC - (Beta*10^-3*I_B*R_C);
V_CE = V_CC - (Beta*I_B*R_C);// in V
// Collector current,
I_C =Beta*I_B;// in A
I_C= I_C*10^3;// in mA
disp("The operating point is : "+string(V_CE)+" V, "+string(I_C)+" mA")




// Exa 3.1
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 15;// in V
R_C = 4;// in k ohm
R_C =R_C * 10^3;// in ohm
I_C = 0;// in A
V_CE = V_CC - (I_C*R_C);// in V
V_CE = 0;// in V
// V_CE = V_CC - I_C*R_C;
I_C = V_CC/R_C;// in A
I_C = I_C * 10^3;// in mA
plot([V_CC 0],[0 I_C])
xlabel("V_CE in volts")
ylabel("I_C in mA")
title("DC load line")
disp("DC load line shown in figure")

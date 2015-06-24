// Exa 4.36
format('v',5)
clc;
clear;
close;
// Given data
V_CC = 20;// in V
R_C = 3.3;// in k ohm
R_C = R_C * 10^3;// in ohm
R_B = 1;// in Mohm
R_B = R_B * 10^6;// in ohm
V_CE = V_CC;// in V
I_C = V_CC/R_C;// in A
I_C=I_C*10^3;// in mA
// Plotting of the DC load line,
plot([V_CE,0],[0,I_C]);
xlabel("V_CE in volts.");
ylabel("I_C in mA.");
title("DC load line.")
disp(I_C,"At saturation, the value of I_C in mA is : ")
disp(V_CE,"At cut off, the value of V_CE in volts is : ")
disp("DC load line shown in figure.");


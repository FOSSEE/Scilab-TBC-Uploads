// Example 10.3
format('v',6)
clc;
clear;
close;
// given data
V_CC= 40;// in V
V_CEQ= 20;// in V
R_L= 10;// in Ω
I_Csat= V_CEQ/R_L;// in A
V_CEcutoff= V_CEQ;// in V
V_CE= 0:0.1:V_CEcutoff;// in V
I_C= (V_CEQ-V_CE)/R_L;// in A
// The plot of ac load line,
plot(V_CE,I_C)
xlabel("V_CE in volts")
ylabel("I_C in A")
title("AC load line")
disp("AC load line shown in figure")

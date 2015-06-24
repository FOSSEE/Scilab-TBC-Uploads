// Exa 4.34
clc;
clear;
close;
// Given data
V_CC = 20;// in V
R_C = 3.3;// in kohm
R_C = R_C * 10^3;// in ohm
I_C = V_CC/R_C;// in A
disp(I_C*10^3,"Collector current in mA is");
V_CE = V_CC;// in V
disp(V_CE,"Collector emitter voltage in V is");
V_CE=0:0.1:20 ;// in V
I_C= (V_CC-V_CE)/(R_C*10^-3);// in mA
plot(V_CE,I_C);
xlabel("V_CE in volts")
ylabel("I_C in mA")
title("DC load line")
disp("DC load line shown in figure")

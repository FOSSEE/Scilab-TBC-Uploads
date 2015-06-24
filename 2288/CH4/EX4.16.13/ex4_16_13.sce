// Exa 4.16.13
clc;
clear;
close;
// Given data
V_D = 10;// in V
// V_S = i*R_L + V_D
V_S = V_D;// in V (i * R_L = 0)
disp(V_S,"when diode is OFF, the voltage in volts is : ");
R_L = 250;// in ohm
I = V_S/R_L;// in A
disp(I*10^3,"when diode is ON, the current in mA is");
V_D= 0:0.1:10;// in V
I= (V_S-V_D)/R_L*1000;// in mA
plot(V_D,I)
xlabel("V_D in volts");
ylabel("Current in mA")
title("DC load line");
disp("DC load line shown in figure")

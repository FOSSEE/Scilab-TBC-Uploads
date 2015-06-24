// Exa 9.7
clc;
clear;
close;
// Given data
V_DD= 6;// in V
R_D= 18;// in kohm
// for maximum value of I_D
V_DS=0;// in V
I_Dmax= (V_DD-V_DS)/R_D;// in mA
// for maximum value of V_DS
I_D=0;// in mA
V_DSmax=V_DD-I_D*R_D;// in V
V_DS= 0:0.1:V_DSmax;// in V
I_D= (V_DD-V_DS)/R_D;// in mA
plot(V_DS,I_D)
xlabel("V_DS in volts")
ylabel("I_D in mA")
title("DC load line")
disp("DC load line shown in figure");
disp("Q-points are : 2.8V,0.178 mA")

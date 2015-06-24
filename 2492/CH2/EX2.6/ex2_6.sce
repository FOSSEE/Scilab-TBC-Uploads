// Exa 2.6
format('v',9)
clc;
clear;
close;
// Given data
R_L = 50;// in ohm
V = 10;// in V
R = 5;// in ohm
V_D = (V*R)/(R_L+R);// in V
R_D = (R_L*R)/(R_L+R);// in ohm
I_D = V_D/R_D;// in A
I_D = I_D * 10^3;// in mA
plot([V_D,0],[0,I_D])
xlabel("V_D in volts");
ylabel("I_D in mA");
title("DC load line");
disp("DC load line shown in figure")
slope = -1/R_D;
disp(slope,"The slope of the dc load line is : ");

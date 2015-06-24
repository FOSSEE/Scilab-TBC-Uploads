// Exa 3.2
clc;
clear;
close;
format('v',6)
// Given data
R_C = 5;// in k ohm
V_CC = 10;// in V
I_C = 1;// in mA
V_CE = V_CC - (I_C*R_C);// in V
disp("Part (i) When Collector load = 5 kohm");
disp("Operating point is : "+string(V_CE)+" V, "+string(I_C)+" mA")
disp("The quiescent point 5V and 1mA");
R_C = 6;// in k ohm
V_CE = V_CC - (I_C*R_C);// in V
disp("Part (ii) When Collector load = 6 kohm");
disp("Operating point is : "+string(V_CE)+" V, "+string(I_C)+" mA")

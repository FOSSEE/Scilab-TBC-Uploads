// Exa 1.1
clc;
clear;
close;
// Given data
V_EE = 10;// in V
R2 = 2.4;// in k ohm
R1 = 2.4;// in k ohm
R3 = 1;// in k ohm
V_BE3 = 0.7;// in V
I = (V_EE - ((R2*V_EE)/(R1+R2)) - V_BE3)/R3;// in mA
disp(I,"The constant current in mA is");

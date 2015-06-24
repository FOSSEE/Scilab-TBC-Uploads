// Exa 3.12
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 20;// in V
bita = 50;
R_C = 2;// in k ohm
R_E = 0.1;// in k ohm
R1 = 100;// in k ohm
R2 = 5;// in k ohm
R_Th = (R1*R2)/(R1+R2);// in k ohm
R_B = R_Th;// in k ohm
V_BE = 0.7;// in V
V_Th = (V_CC*R2)/(R1+R2);// in V
// Applying KVL to the base circuit, V_Th  - I_B*R_B - V_BE - I_E*R_E = 0 or
I_B = (V_Th-V_BE)/(R_B + (R_E*(1+bita)));// in mA     (on putting I_E= (1+bita)*I_B)
I_C = bita*I_B;// in mA
I_E = (1+bita)*I_B;// in mA
V_CE = V_CC - (I_C*R_C) - (I_E*R_E);// in V
disp("Q Point : "+string(V_CE)+" volts, "+string(I_C)+" mA")

// Exa 4.11
clc;
clear;
close;
format('v',5)
// Given data
V_CC = 12;// in V
Beta = 100;
R = 600;// in k ohm
R = R * 10^3;// in ohm
R1 = 600;// in ohm
//Applying KVL to input side, V_CC -(I_E*R1) - (I_B*R) - V_BE = 0
I_B = V_CC/(R+(Beta*R1));// in A
I_C = Beta*I_B;// in A
I_E = I_C+I_B;// in A
// Applying KVL to output side
V_CE = V_CC - (I_E*R1);// in V
I_E= I_E*10^3;// in mA
disp(I_E,"The emitter current in mA is");
disp(V_CE,"The collector voltage in V is");

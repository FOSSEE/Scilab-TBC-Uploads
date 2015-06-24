// Exa 3.14
clc;
clear;
close;
format('v',5)
// Given data
bita = 140;
V_BE = 0.7;// in V
V_CC = 22;// in V
R1 = 39;// in k ohm
R_C = 10;// in k ohm
R2 = 3.9;// in k ohm
R_E = 1.5;// in k ohm
// Calculation of Thevenin's Resistance
R_Th = (R1*R2)/(R1+R2);// in k ohm
// Calculation of Thevenin's Voltage
V_Th = (V_CC*R2)/(R1+R2);// in V
I_B= poly(0,'I_B');// in mA
I_E= (1+bita)*I_B;// in mA
// Applying KVL to input side, V_Th - I_B*R_Th - V_BE - I_E*R_E=0 or 
I_B= V_Th - I_B*R_Th - V_BE - I_E*R_E;
I_B= roots(I_B);// in mA
I_C = bita*I_B;// in mA
I_E= (1+bita)*I_B;// in mA
// Applying KVL to C-E circuit, V_CC - I_C*R_C - V_CE - I_E*R_E = 0 or
V_CE = V_CC - (I_C*R_C) - ((1+bita)*I_B*R_E);// in V
I_B= I_B*10^3;// in µA
disp(I_B,"The value of I_B in µA is");
disp(I_C,"The value of I_C in mA is");
disp(V_CE,"The value of V_CE in V is");

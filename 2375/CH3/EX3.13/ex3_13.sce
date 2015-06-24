// Exa 3.13
clc;
clear;
close;
format('v',5)
// Given data
bita= 44;
V_BE = 0.2;// in V
V_CC = -4.5;// in V
R1 = 2.7;// in k ohm
R_C = 1.5;// in k ohm
R2 = 27;// in k ohm
R_E = 0.27;// in k ohm
R_Th = (R1*R2)/(R1+R2);// in k ohm
R_B = R_Th;// in k ohm
V_Th = (V_CC*R_B)/R2;// in V
I_B= poly(0,'I_B');// in mA
I_C= bita*I_B;// in mA
I_E= -(I_C+I_B);// in mA
// Applying KVL to base circuit, -V_Th - I_B*R_B - V_BE + (I_E*R_E) = 0     (i)
I_B= (V_Th - I_B*R_B + V_BE + (I_E*R_E));// in mA
I_B= roots(I_B);// in mA
I_C= bita*I_B;// in mA
I_E= -(I_C+I_B);// in mA
// Applying KVL to collector circuit, -V_CC - I_C*R_C - V_CE + I_E*R_E = 0 or 
V_CE = V_CC - (I_C*R_C) + (I_E*R_E);// in V
disp("Part (a) : ")
disp("Q Point : "+string(V_CE)+" volts, "+string(I_C)+" mA")
// Calculation of R'Th or R'B (Thevenin's Resistance)
r_bb = 0.69;// in k ohm
R_deshB = ((R1*R2)/(R1+R2)) + r_bb;// in k ohm
// Calculation of Thevenin's voltage
I_B= (V_Th+V_BE)/(R_deshB+(1+bita)*R_E);// in mA
I_C= bita*I_B;// in mA
// Applying KVL to collector circuit, -V_CC - (I_C*R_C) - V_CE + I_E*R_E = 0 or
V_CE = V_CC - (I_C*R_C) + (I_E*R_E);// in V
disp("Part (b) : ")
disp("Q Point : "+string(V_CE)+" volts, "+string(I_C)+" mA")






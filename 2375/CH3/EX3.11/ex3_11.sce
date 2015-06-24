// Exa 3.11
clc;
clear;
close;
format('v',5)
//Given data
Beta = 100;
V_CC = 10;// V
R1 = 9.1;// in k ohm
R_C = 1;// in k ohm
R_E = 560*10^-3;// in  k ohm
R2 = 4.7;// in k ohm
V_BE = 0.7;// in V
V_Th = (V_CC/(R1+R2))*R2;// in V
R_B = (R1*R2)/(R1+R2);// in k ohm
// V_Th - I_B*R_B - V_BE - I_E*R_E = 0 or 
I_B = (V_Th-V_BE)/(R_B+((1+Beta)*R_E));// in mA
// I_C = Beta*I_B + (1+Beta)*I_CO;
I_C = Beta*I_B;// in mA (neglecting I_CO as it is very small)
// V_CC - (I_C*R_C) - V_CE - I_E*R_E = 0;
V_CE = V_CC - (I_C*R_C) - (I_C*R_E);// in V
disp("Q Point : "+string(V_CE)+" volts, "+string(I_C)+" mA")

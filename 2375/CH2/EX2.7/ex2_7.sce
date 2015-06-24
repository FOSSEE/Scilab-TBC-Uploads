// Exa 2.7
clc;
clear;
close;
format('v',6)
// Given data
Beta = 100;
V_BEsat = 0.8;// in V
V_BEact = 0.7;// in V
V_CC = 10;// in V
V = 5;// in V
R_B = 50* 10^3;// in ohm
R_E = 2* 10^3;// in ohm
R_C = 3* 10^3;// in ohm
// As the transistor is in active region, so V = R1*I_B + V_BEact + (1+Beta)*I_B*R2;
I_B = (V-V_BEact)/(R_B+(1+Beta)*R_E);// in A
I_B = round(I_B * 10^6);// in µA
disp(I_B,"The value of I_B in µA is");
I_C = Beta*I_B*10^-6;// in A
I_C = I_C * 10^3;// in mA
disp(I_C,"The value of I_C in mA is");
// Applying KVL to collector circuit, V_CC = (I_C*R3) + V_CEact + (I_C+I_B)*R2;
V_CEact = V_CC - (I_B*10^-6*R_E) - (I_C*10^-3*(R_E+R_C));// in V
disp(V_CEact,"The value of V_CE in V is");


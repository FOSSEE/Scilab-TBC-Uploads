// Exa 4.9
clc;
clear;
close;
format('v',6)
// Given data
V_BE = 0.6;// in V
V_CC = 10;// in V
Beta = 60;
R_B = 20;// in  k ohm
R_B = R_B * 10^3;// in ohm
R_C = 300;// in ohm
// V_CC - (I_B*R_B)-V_BE = 0;
I_B = (V_CC-V_BE)/R_B;// in A
// The collector current 
I_C = Beta*I_B;// in A
I_C= I_C*10^3;// in mA
disp(I_C,"The collector current in mA is");
// V_CC - (I_C*R_C) -V_CE = 0;
// The collector emitter voltage 
V_CE = V_CC - (I_C*10^-3*R_C);// in V
disp(V_CE,"The collector emitter voltage in V is");

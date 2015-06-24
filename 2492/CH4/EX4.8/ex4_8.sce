// Exa 4.8
format('v',6)
clc;
clear;
close;
// Given data
V_CE = 8;// in V
I_C = 1;// in mA
I_C = I_C * 10^-3;// in A
V_CC = 12;// in V
Beta = 100;
R_C = (V_CC-V_CE)/I_C;// in ohm
I_B = I_C/Beta;// in A
V_BE = 0.3;// in V
R_B = ((V_CC-(I_C*R_C))-V_BE)/I_B;// in ohm
// For Beta= 50;
V_CE= 9.6;// in V
I_C= 0.6;// in mA
R_C= R_C*10^-3;// in k ohm
R_B= R_B*10^-3;// in k ohm
disp(R_C,"The value of R_C in k ohm is");
disp(R_B,"The value of R_B in k ohm is");
disp("New Q point : "+string(V_CE)+" volts, "+string(I_C)+" mA")

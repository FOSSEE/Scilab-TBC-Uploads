// Exa 4.29
format('v',6)
clc;
clear;
close;
// Given data
V_CC = 18;// in V
V_BE = 0.7;// in V
R1 = 510;// in k ohm
R1 = R1 * 10^3;// in ohm
Beta = 130;
R_E = 7.5;// in k ohm
R_E = R_E * 10^3;// in ohm
R_C = 9.1;// in k ohm
R_C = R_C * 10^3;// in ohm
// The value of I_CQ 
I_CQ = (V_CC-V_BE)/( (R1/Beta)+R_E+(R_E/Beta) );// in A
I_CQ= I_CQ*10^3;// in mA
disp(I_CQ,"The value of I_CQ in mA is");
// The value of V_CEQ 
V_CEQ = V_CC - I_CQ*10^-3*(R_C+R_E+(R_E/Beta));// in V
disp(V_CEQ,"The value of V_CEQ in V is");

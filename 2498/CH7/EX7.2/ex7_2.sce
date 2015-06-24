// Exa 7.2
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 30;// in mA
V_GSoff = -8;// in V
V_GS = -5;// in V
// The value of drain current 
I_D = I_DSS * ((1-(V_GS/V_GSoff))^2);// in mA
disp(I_D,"The value of drain current in mA is");

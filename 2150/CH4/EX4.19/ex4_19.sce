// Exa 4.19
clc;
clear;
close;
// Given data
R1 = 47;// in kohm
R1=  R1*10^3;// in ohm
R2 = 10;// in kohm
R2= R2*10^3;// in ohm
R_E = 1.1;// in kohm
R_E = R_E * 10^3;// in ohm
R_C = 2.4;// in kohm
R_C = R_C * 10^3;// in ohm
V_CC = -18;// in V
V_B = (R2*V_CC)/(R1+R2);// in V
V_BE = -0.7;// in V
V_E = V_B - V_BE;// in V
I_E = abs(V_E)/R_E;// in A
V_CE = V_CC + (I_E)*(R_C+R_E);// in V
disp(V_B,"The value of V_B in volts is : ");
disp(I_E*10^3,"The value of I_E in mA is : ")
disp(V_CE,"The value of V_CE in V is");

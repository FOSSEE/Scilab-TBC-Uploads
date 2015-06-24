// Exa 5.9
clc;
clear;
close;
// Given data
R_C = 3.6;// in kohm
R_C= R_C*10^3;// in ohm
R_L = 10;// in kohm
R_L=R_L*10^3;// in ohm
R_TH = (R_C*R_L)/(R_C+R_L);// in ohm
V_CC = 10;// in V
R2 = 2.2;// in kohm
R2 = R2 * 10^3;// in ohm
R1 = 10;// in kohm
R1 = R1 * 10^3;// in ohm
V_BE = 0.7;// in V
V_B = (V_CC*R2)/(R1+R2);// in V
R_E = 1;// in kohm  
R_E = R_E *10^3;// in ohm
I_E = (V_B-V_BE)/R_E;// in A
V1 = 25;// in mV
V1 = V1*10^-3;// in V
r_e = V1/(I_E);// in ohm
A_v = (R_TH)/r_e;
V_in = 2;// in mV
V_in = V_in * 10^-3;// in V
V_out = A_v*V_in;// in V
disp(V_out,"The output voltage in V is");

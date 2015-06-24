// Exa 4.5
clc;
clear;
close;
format('v',7)
// Given data
h_ie = 1.1;// in k ohm
h_oe = 25;// in A/V
h_oe = h_oe * 10^-6;// in A/V
h_fe = 50;
h_re = 2.5*10^-4;
R_L = 1.6;// in ohm
R_S = 1;// in k ohm
V_CC = 15;// in V
// (i) Current Gain
Ai = -h_fe/(1 + (h_oe*R_L));
disp(Ai,"The current gain is");
// (ii) Input impedance
Zi = (h_ie*10^3) + (h_re*Ai*R_L);// in ohm
Zi= Zi*10^-3;// in k ohm
disp(Zi,"The input impedance in k ohm is");
Zi= Zi*10^3;// in ohm
// (iii) Voltage gain
A_V = Ai*R_L/Zi;
disp(A_V,"The voltage gain is");
// (iv) Power gain
A_P = Ai*A_V;
disp(A_P,"The power gain is");

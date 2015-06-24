// Exa 4.4
clc;
clear;
close;
format('v',6)
// Given data
h_ie = 1.1;// in k ohm
h_re = 2.5*10^-4;
h_fe = 50;
h_oe = 25*10^-6;// in A
V_CC = 15;// in V
R1 = 20;// in k ohm
R_C = 2;// in k ohm
R2 = 10;// in k ohm
R_S = 1;// in k ohm
R_E = 1;// in k ohm
// (i) Current Gain
Ai = -h_fe/(1 + h_oe*R_C*10^3);
disp(Ai,"The current gain is");
// (ii) Input impedance
Zi = (h_ie*10^3) + (h_re*Ai*R_C*10^3);//in ohm
Zi = Zi * 10^-3;// in k ohm
disp(Zi,"The input impedance in k ohm is");
// (iii) Voltage gain
A_V = (Ai*R_C)/Zi;
disp(A_V,"The voltage gain is");
// (iv) Overall input impedance
R_B = (R1*R2)/(R1+R2);// in k ohm
Z_IS = (Zi*R_B)/(Zi+R_B);// in k ohm
disp(Z_IS,"The overall input impedance in k ohm is");
// (v) Overall voltage gain
A_VS = A_V * (Z_IS/(Z_IS+R_S));
disp(A_VS,"The overall voltage gain is");
// (vi) Overall current gain
A_IS =Ai*(R_B/(R_B+Zi));
disp(A_IS,"The overall current gain is");

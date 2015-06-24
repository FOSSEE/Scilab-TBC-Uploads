// Exa 7.17
clc;
clear;
close;
format('v',6)
// Given data
I_D = 0.5;// in mA
V_D = 3;// in V
Vt = -1;// in v
KnWbyL = 1;// in mA/V^2
V_DD = 5;// in V
V_D = 3;// in v
V_GS= poly(0,'V_GS');
V_GS= I_D -1/2*KnWbyL*(V_GS-Vt)^2;// in V
V_GS= roots(V_GS)// in V
V_GS= V_GS(1);// in V
R_G1 = 2;// in Mohm
R_G1 = R_G1 * 10^6;// in ohm
R_G2 = 3;// in Mohm
R_G2 = R_G2 * 10^6;// in ohm
V_GS = -2;// in V
R_D = V_D/I_D;// in k ohm
V_Dmax = V_D+abs(Vt);// in V
R_D = V_Dmax/I_D;// in k ohm
disp(R_D,"The largest value of R_D in k ohm is");

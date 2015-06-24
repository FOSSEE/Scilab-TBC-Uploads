// Exa 4.28
format('v',6)
clc;
clear;
close;
// Given data
Beta = 130;
V_BE = 0.7;// in V
V_CC = 18;// in V
R1 = 510;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 510;// in k ohm
R2 = R2 * 10^3;// in ohm
R_C = 9.1;// in k ohm
R_C = R_C * 10^3;// in ohm
R_E = 7.5*10^3;// in ohm
Vth = V_CC*(R2/(R1+R2));// in V
Rth = (R1*R2)/(R1+R2);// in ohm
//Applying KVL in the input loop, Vth = (I_B*Rth)+V_BE+(I_E*R_E) or
I_CQ = (Vth-V_BE)/( (Rth/Beta)+R_E+(R_E/Beta) );// in A         (On putting I_E = I_C+I_B and I_C = Beta*I_B)
I_CQ= I_CQ*10^3;// in mA
disp(I_CQ,"The value of I_CQ in mA is");
// Applying KVL in the output loop, V_CC = (I_C*R_C) + V_CEQ + (I_E*R_E);
V_CEQ = V_CC - (I_CQ*10^-3*( R_C+R_E+(R_E/Beta) ));// in V
disp(V_CEQ,"The value of V_CEQ in V is");

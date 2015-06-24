// Exa 3.5
clc;
clear;
close;
format('v',5)
// Given data
R_L = 1.2;// in k ohm
R_L = R_L * 10^3;// in ohm
Vi = 16;// in V
R = 1;// in k ohm
R = R * 10^3;// in ohm
// The value of V_L 
V_L = (R_L*Vi)/(R+R_L);// in V
disp(V_L,"The value of V_L in V is");
V_Z = 10;// in V
// The value of V_R 
V_R = Vi-V_L;// in V
disp(V_R,"The value of V_R in V is");
// The value of I_Z 
I_Z = 0;// in A
disp(I_Z,"The value of I_Z in A is");
// The value of P_Z 
P_Z =V_Z*I_Z;// in W
disp(P_Z,"The value of P_Z in W is");

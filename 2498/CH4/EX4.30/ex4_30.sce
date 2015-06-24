// Exa 4.30
format('v',5)
clc;
clear;
close;
// Given data
V_CC = 10;// in V
Beta = 90;
V_BE = 0.7;// in V
R_E = 4.7;// in k ohm
R_E = R_E * 10^3;// in ohm
R_B = 250;// in k ohm
R_B = R_B * 10^3;// in ohm
R = 1.2;// in k ohm
R = R * 10^3;// in ohm
//Applying KVL for input loop, V_CC = R_E*I_E + R_B*I_B + V_BE  +I_E*R or
I_CQ = (Beta*(V_CC-V_BE))/( ((1+Beta)*(R_E+R))+R_B );// in A     (On putting I_E = I_C+I_B and I_B = I_C/Beta)
I_CQ=I_CQ*10^3;// in mA
disp(I_CQ,"The value of I_CQ in mA is");
I_CQ=I_CQ*10^-3;// in A
//Applying KVL for output loop, V_CC = ((I_CQ+(I_CQ/Beta))*R_E)+V_CEQ + ((I_CQ+(I_CQ/Beta))*R)
V_CEQ = V_CC - ( (I_CQ+(I_CQ/Beta)) * (R_E+R) );// in V
disp(V_CEQ,"The value of V_CEQ in V is");
// If beta is increased by 50% i.e
bita = Beta+Beta/2;
I_deshCQ = (bita*(V_CC-V_BE))/( ((1+bita)*(R_E+R))+R_B );// in A
I_deshCQ=I_deshCQ*10^3;// in mA
disp(I_deshCQ,"The value of I''CQ in mA is");
V_deshCEQ = V_CC - ( (I_CQ+(I_CQ/bita)) * (R_E+R) );// in V
disp(V_deshCEQ,"The value of V''CEQ in V is");

// Note: In the book, there is calculation error to evaluate the value of V'CEQ, So the answer in the book is wrong.


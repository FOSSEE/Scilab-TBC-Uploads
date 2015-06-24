// Exa 4.34
format('v',6)
clc;
clear;
close;
// Given data
I_B = 20;// in µA
I_B = I_B * 10^-6;// in A
R_C = 2.7;// in k ohm
R_C = R_C * 10^3;// in ohm
V_CE = 7.3;// in V
V_BE = 0.7;// in V
R_E = 0.68;// in k ohm
R_E = R_E * 10^3;// in ohm
V_E = 2.1;// in V
I_E = V_E/R_E;// in A
I_C =I_E-I_B;// in A  (as I_E = I_C+I_B)
Beta = I_C/I_B;
disp(Beta,"The value of beta is");
// Applying KVL to the output loop, 
V_CC = (I_C*R_C) +V_CE + (I_E*R_E);// in V
disp(V_CC,"The value of V_CC in V is");
// Applying KVL to the output loop, V_CC = (I_B*R_B)+V_BE+(I_E*R_E) or
R_B = (V_CC-V_BE-(I_E*R_E))/I_B;// in ohm
R_B= R_B*10^-3;// k ohm
disp(R_B,"The value of R_B in k ohm is");

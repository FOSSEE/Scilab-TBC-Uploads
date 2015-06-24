// Exa 4.12
clc;
clear;
close;
format('v',5)
// Given data
I_C = 6.4;// in mA
I_C = I_C * 10^-3;// in A
V_CE = 8.4;// in V
Beta = 80;
V_CC= 10;// in V
R = 250;// in ohm
R_E = 500;// in ohm
I_B = I_C/Beta;// in A
//Applying KVL to the input side, V_CC - (I_B*R_B) - V_BE - (I_E*R1) = 0 or
R_B = (V_CC-(Beta+1)*R_E*I_B)/I_B
R_B = R_B * 10^-3;// in k ohm
disp(R_B,"The value of R_B in k ohm is");

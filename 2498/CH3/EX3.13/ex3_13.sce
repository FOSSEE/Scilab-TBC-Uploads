// Exa 3.13
clc;
clear;
close;
format('v',5)
// Given data
R_S = 1;// in k ohm
R_L = 1.2;// in k ohm
V_Z = 10;// in V
V_S = 16;// in V
V_L = (R_L/(R_L+R_S))*V_S;// in V
//The value of I_Z 
I_Z = 0;// in A
disp(I_Z,"The value of I_Z in A is");
// The value of P_Z 
P_Z = 0;
disp(P_Z,"The value of P_Z is");
//The value of Vo
Vo = V_L;// in V
disp(Vo,"The value of Vo in V is");

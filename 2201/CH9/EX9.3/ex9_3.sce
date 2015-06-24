// Exa 9.3
clc;
clear;
close;
// Given data
V_GS = 6;// in V
I_D = 4;// in mA
V_GSth = 2;// in V
V_DS = V_GS;// in V
V_DD = 2*V_DS;// in V
disp(V_DD,"The value of V_DD in V is")
R_D = (V_DD-V_DS)/I_D;// in k ohm
disp(R_D,"The value of R_D in k ohm is ");
disp("The very high value for the gate to drain resistance is : 10 MΩ")

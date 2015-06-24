// Exa 2.a
clc;
clear;
close;
// Given data
V_P= -4;// in V
I_DSS= 10;// in mA
V_GS= 0;// in V
R_D= 1.8;// in kΩ
V_DD= 20;// in V
I_D= I_DSS*(1-V_GS/V_P)^2;// in mA
// Applying KVL to the circuit, we get V_DD= I_D*R_D+V_D
V_D= V_DD-I_D*R_D;// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_D,"The value of V_D in volts is : ")

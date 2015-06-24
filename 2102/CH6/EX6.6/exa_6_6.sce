// Exa 6.6
clc;
clear;
close;
// Given data
I_DSS= 5.6*10^-3;// in A
V_P= 4;// in volt
Vi= 10;// in V
R1= 4.7;// in kΩ
R1= R1*10^3;// in Ω
Rs= 10;// in kΩ
Rs= Rs*10^3;// in Ω
V1=-24;// in V
Vs= 12;// in V
// Appling KVL to the gate source loop, we get,  Vs= I_D*Rs-V_GS
// V_GS= I_D*Rs-Vs          (i)
// I_D= I_DSS*(1-V_GS/V_P)^2 = I_DSS*(1-(I_D*Rs-Vs)/V_P)^2 
I_D= 1.49;// in mA
I_D= I_D*10^-3;// in A
V_GS= I_D*Rs-Vs;
Vo= Vs-I_D*Rs;// in volt
disp(V_GS,"The value of V_GS in volts is : ")
disp(Vo,"The value of Vo in volts is : ")


// Exa 6.7
clc;
clear;
close;
// Given data
I_D= 5;// in mA
I_D=I_D*10^-3;// in A
V_DD= 10;// in V
R_D= 1;// in kΩ
R_D= R_D*10^3;// in Ω
Rs= 500;// in Ω
Vs= I_D*Rs;// in volt
V_D= V_DD-I_D*R_D;// in V
V_DS= V_D-Vs;// in V
V_GS= -Vs;// in V
disp(V_DS,"The value of drain-to-source voltage in volts is : ")
disp(V_GS,"The value of gate-to-sourcce voltage in volts is : ")

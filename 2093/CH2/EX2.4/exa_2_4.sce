// Exa 2.4
clc;
clear;
close;
// Given data 
I_D= 0.4;// in mA
I_D=I_D*10^-3;// in A
Vt= 0.7;// in V
V_SS= -2.5;// in V
V_DD= 2.5;// in V
unCox= 100;// in µA/V^2
unCox= unCox*10^-6;// in A/V^2
W= 32;// in m
L= 1;// in m
// V_GS-Vt= V_OV
// I_D= unCox*W/(2*L)*(V_OV)^2
V_OV= sqrt(I_D/(unCox*W/(2*L)));// in V
V_GS= V_OV+Vt;// in V
disp(V_GS,"The value of V_GS in volt is : ")
V_G= 0;
// Formula V_GS= V_G-V_S
V_S= V_G-V_GS;// in V
R_S= (V_S-V_SS)/I_D// in Ω
disp(R_S*10^-3,"The value of R_S in kΩ is : ")
V_D= 0.5;// in V
R_D= (V_DD-V_D)/I_D;//in Ω
disp(R_D*10^-3,"The value of R_D in kΩ is : ")

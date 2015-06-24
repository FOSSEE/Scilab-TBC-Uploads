// Exa 2.5
clc;
clear;
close;
// Given data 
V_DD= 3;// in V
I_D= 80;// in µA
I_D=I_D*10^-6;// in A
Vt= 0.6;// in V
unCox= 200;// in µA/V^2
unCox= unCox*10^-6;// in A/V^2
L= 0.8;//in µm
L= L*10^-6;// in m
W=4;// in µm
W=W*10^-6;// in m
// V_GS-Vt= V_OV
// I_D= unCox*W/(2*L)*(V_OV)^2
V_OV= sqrt(I_D/(unCox*W/(2*L)));// in V
V_GS= V_OV+Vt;// in V
V_D= 1;// in V
V_G= V_D;// in V
R= (V_DD-V_D)/I_D;// in Ω
disp(R*10^-3,"The value of R in kΩ is : ")

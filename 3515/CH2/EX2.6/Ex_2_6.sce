// Exa 2.6
format('v',7);
clc;
clear;
close;
// Given data 
V_DD= 10;// in V
I_D= 0.4;// in mA
I_D=I_D*10^-3;// in A
Vt= 2;// in V
unCox= 20;// in µA/V^2
unCox= unCox*10^-6;// in A/V^2
L= 10;//in µm
L= L*10^-6;// in m
W=100;// in µm
W=W*10^-6;// in m
V_S= 0;// in V as source is connected to ground
// I_D= unCox*W/(2*L)*(V_OV)^2
V_OV= sqrt(I_D/(unCox*W/(2*L)));// in V
V_GS= V_OV+Vt;// in V
V_D= V_GS;// in V
R= (V_DD-V_D)/I_D;// in Ω
R= R*10^-3;// in kΩ
disp(R,"The value of R in kΩ is : ")

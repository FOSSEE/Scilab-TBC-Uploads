// Exa 2.3
format('v',6);
clc;
clear;
close;
// Given data 
Vt= 0.7;// in V
I_D= 100;// in µA
I_D=I_D*10^-6;// in A
// When 
V_GS= 1.2;// in V
V_DS= V_GS;// in V
// At this condition, device is in saturation region, so     I_D= unCox*W/(2*L)*(V_GS-VT)^2
unCoxWby2L= I_D/(V_GS-Vt)^2;
// For 
V_DS= 3;// in V
V_GS= 1.5;// in V
// In this condition, device is in saturation region, so
I_D= unCoxWby2L*(V_GS-Vt)^2;// in A
I_D= I_D*10^6;// in µA
disp(I_D,"For V_DS= 3V and V_GS= 1.5 V, The value of I_D in µA is : ")
// For
V_GS= 3.2;// in V
r_DS= 1/(2*unCoxWby2L*(V_GS-Vt));// in Ω
disp(r_DS,"For V_GS = 3.2 V, Drain to source resistance in Ω is : ")

// Exa 2.c
clc;
clear;
close;
// Given data
V_GS= 3;// in V
Vth= 1;// in V
unCox= 25;// in mA/V^2
unCox= unCox*10^-3;// in A/V^2
W=3;// in µm
L=1;// in µm
r_DS= 1/(unCox*W/L*(V_GS-Vth));// in Ω
disp(r_DS,"The value of r_DS in Ω is : ")

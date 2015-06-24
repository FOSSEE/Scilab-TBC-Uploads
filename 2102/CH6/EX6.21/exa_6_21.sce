// Exa 6.21
clc;
clear;
close;
// Given data
I_DSS= 10;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -2;// in V
// Part (i)
// At V_GS= 0V
V_GS= 0;// in V
r_DS= V_P^2/(2*I_DSS*(V_GS-V_P));// in Ω
disp(r_DS,"At V_GS=0 , the drain source resistance in Ω is : ")
// Part (ii)
// At V_GS= -0.5V
V_GS= -0.5;// in V
r_DS= V_P^2/(2*I_DSS*(V_GS-V_P));// in Ω
disp(r_DS,"At V_GS=-0.5 , the drain source resistance in Ω is : ")

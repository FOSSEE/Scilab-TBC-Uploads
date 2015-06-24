// Exa 6.26
clc;
clear;
close;
// Given data
I_DSS= 16*10^-3;// in A
V_GSoff= -6;//in V
V_GS= V_GSoff/2;// in V
I_D= I_DSS*(1-V_GS/V_GSoff)^2;// in A
disp(I_D*10^3,"The drain current in mA is : ")
V_GS= abs(V_GSoff)/2;// in V
disp(V_GS,"The gate voltage in volts is : ")

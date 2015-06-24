// Example 2.23
clc;
clear;
close;
// Given data
Cv = 652;// in J/kg-K
R= 287;// in J/kg-K
Cp= Cv+R;// in J/kg-K
m=0.3;// in kg
P= 1.5*10^5;// in N/m^2
V= 0.283;// in m^3
// Formula P*V= m*R*T
T= P*V/(m*R);// in K
T= T-273;// in °C
T1= -40;// in °C
delta_U= m*Cv*(T-T1);// in J
disp(delta_U*10^-3,"Internal energy in kJ is : ")

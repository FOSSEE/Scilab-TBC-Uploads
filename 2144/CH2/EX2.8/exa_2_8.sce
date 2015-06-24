// Example 2.8
clc;
clear;
close;
// Given data
mR= 8314.3;// in J/kg-mole-K
P= 200*10^3;// in N/m^2
T= 30+273;// in K
// Formula P*V = mR*T
V= mR*T/P;// in m^3
disp(V,"The molecular volume of all the gases in m^3 is : ")

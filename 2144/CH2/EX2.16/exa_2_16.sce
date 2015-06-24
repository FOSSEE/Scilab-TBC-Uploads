// Example 2.16
clc;
clear;
close;
// Given data
U= 2800;// in kJ/kg
P= 20;// in bar
P= P*10^5;// in N/m^2
V= 0.23/1000;// in m^3
SP= U+P*V;// specific enthalpy in kJ/kg
disp(SP,"The specific enthalpy in kJ/kg is : ")

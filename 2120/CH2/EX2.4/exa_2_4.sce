// Exa 2.4
clc;
clear;
close;
// Given data
a= 0.85;
b= 0.00004;
c= 5*10^-5;
T1= 300;// in K
T2= 2300;// in K
gama= 1.5;// the ratio of specific heats
m=1;// in kg
delta_H= m*integrate('a+b*T+c*T^2','T',T1,T2);// in kJ
disp(delta_H*10^-3,"Change in enthalpy in MJ is : ")
// Formula delta_U= integration of m*Cv = integration of m*Cp/gama= delta_H/gama
delta_U= delta_H/gama;// in kJ
disp(delta_U*10^-3,"The change in internal energy in MJ is : ")

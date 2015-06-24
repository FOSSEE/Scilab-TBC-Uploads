// Exa 2.36
clc;
clear;
close;
// Given data
I_o= 0.3;// in µA
I_o= I_o*10^-6;// in A
V_F= 0.15;// in V
I= I_o*%e^(40*V_F);// in A
disp(I*10^6,"Current flowing in the diode in µA is : ")

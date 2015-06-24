// Exa 2.40
clc;
clear;
close;
// Given data
n=2;
V_T= 26;// in mV
V_T=V_T*10^-3;// in V
I= 1;// in mA
I= I*10^-3;// in A
r= n*V_T/I;// in Ω
disp(r,"The magnitude of r in Ω is : ")

// Exa 3.1
clc;
clear;
close;
// Given data
N= 100;
A=4*3;// in cm^2
A=A*10^-4;// in m^2
i=20;// in mA
i=i*10^-3;// in A
B=0.05;// in T
T=N*i*B*A;//in Nm
disp(T,"Torque developed by the coil in Nm")

//Example 3 // Tension
clc;
clear;
close;
//given data :
M=2*10^-3;// in kg
l=35*10^-2;// in m
n=500;// in Hz
m=M/l;// in kg/m
T=4*n^2*l^2*m;
disp(T,"Tension,T(N) = ")

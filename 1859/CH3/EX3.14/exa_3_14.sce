// Exa 3.14
clc;
clear;
close;
// Given data
Tc= 120*10^-6;// in N-m
B= 0.5;// in wb/m^2
N=100;
A= 4*3;// in cm^2
A=A*10^-4// in m^2
Rm=0;
V= 100*1;
// Formula Tc= Td = B*I*N*A
I= Tc/(B*N*A);// in amp
R= V/I-Rm;// in ohm
disp(R,"External required resistance in ohm")

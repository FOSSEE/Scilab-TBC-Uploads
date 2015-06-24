// Exa 3.13
clc;
clear;
close;
// Given data
Rm= 10;// in ohm
Im= 50;// in mA
Im=Im*10^-3;// in amp
V=750;// in volt
R= V/Im-Rm;// in ohm
disp(R,"External resistance in ohm")
// Part(ii)
I=100;// in A
N=I/Im;
Rs= Rm/(N-1);// in ohm
disp(Rs,"Shunt resistance required in ohm")

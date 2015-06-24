//Example 13 // Time period
clc;
clear;
close;
//given data :
M=4;// in kg
R=0.10;// in m
I=(2/5)*M*R^2;// in kg.m^2
C=4*10^-3;// in Nm/radian
T=2*%pi*sqrt(I/C);
disp(T,"Time period,T(s) = ")
// answer is wrong in textbook

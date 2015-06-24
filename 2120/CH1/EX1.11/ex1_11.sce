// Exa 1.11
clc;
clear;
close;
// Given data
V =  50;// km per hr
V = V * (1000/3600);// in m per sec
F = 900;// in N
P = F * V;// in watt
P = P *10^-3;// in kW
disp(P,"Power of the engine of a car in kW is : ");
H = P * 60;// in kJ 
disp(H,"Heat equivalent of work per minute in kJ is");

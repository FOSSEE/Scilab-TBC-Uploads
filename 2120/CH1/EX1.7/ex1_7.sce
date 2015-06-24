// Exa 1.7
clc;
clear;
close;
// Given data
// mass of 1 litr of water is 1 kg. so
m = 5000;// in kg
h = 10-1;// in m
g= 9.81;//
PE = m * g * h;// in N m
PE = PE*10^-3;// in kj
Eta = 0.85;
// Eta = energy output/energy input
E_input = PE/Eta;// in Kj
E_input = E_input*10^3;// in J
t = 45;// time in min
t = t*60;// in sec
P = E_input/t;// in J/s
P = P*10^-3;// in kW
disp(P,"Power required for the feed pump in kW is :");


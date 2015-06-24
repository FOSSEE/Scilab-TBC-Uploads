// Exa 1.32
clc;
clear;
close;
format('v',6)
// Given data
Eta = 1;
kT = 26;// in meV
// (%e^((e*V1)/kT)) = 2 or
//The voltage drop across the forward biased diode
V1 = log(2)*kT;// in mV
V1= V1*10^-3;// in V
disp(V1,"The voltage drop across the forward biased diode, in V is");

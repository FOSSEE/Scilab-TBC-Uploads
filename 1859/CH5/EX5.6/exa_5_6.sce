// Exa 5.6
clc;
clear;
close;
// Given data
N=8;// Number of bits
f=1*10^6;// in Hz
T=1/f;
Tc= N*T;// in second
disp(Tc*10^6,"Time of conversion in micro second")

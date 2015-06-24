// Exa 11.10
clc;
clear;
close;
format('v',6)
// Given data
Cs = 0.04;// in pF
C_M = 2;// in pF
Per = (1/2)*(Cs/C_M)*100;// in %
disp("Parallel resonant frequency is greater than series resonant frequency by "+string(Per)+" %")

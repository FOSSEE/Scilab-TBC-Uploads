// Exa 2.11
clc;
clear;
close;
format('v',6)
// Given data
R1 = 2;// in k ohm
R2 = 2;// in k ohm
V_AB = 20;// in V
Vo = V_AB*(R1/(R1+R2));// in V
// The required PIV 
V_AC = Vo;// in V
disp(V_AC,"The required PIV in V is");

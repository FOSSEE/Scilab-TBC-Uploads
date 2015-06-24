//Exa 7.2
clc;
clear;
close;
// Given data
V1 = 20;// in V
V2 = 2;// in V
V = V1-V2;// in V
R = 1;// in  kohm
R = R * 10^3;// in ohm
I_D = V/R;// in A
I_D = I_D * 10^3;// in mA
disp(I_D,"The drain current in mA is");

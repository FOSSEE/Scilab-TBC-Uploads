// Exa 2.20
clc;
clear;
close;
// Given data
V1 = 10;// in V
V2 = 0.7;// in V
V3 = V2;// in V
V = V1-V2-V3;// in V
R1 = 1;// in ohm
R2 = 48;// in ohm
R3 = 1;// in ohm
R = R1+R2+R3;// in ohm
I = V/R;// in A
I = I * 10^3;// in mA
disp(I,"Current in mA is");

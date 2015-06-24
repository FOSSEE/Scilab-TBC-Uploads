// Exa 1.23
clc;
clear;
close;
// Given data
V_S = 5;// in V
V2 = 3;// in V
R = 500;// in ohm
I_D2 = (V_S-V2)/R;// in A
I_D2 = I_D2 * 10^3;// in mA
disp(I_D2,"The diode current in mA is");

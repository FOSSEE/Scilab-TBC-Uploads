// Exa 1.22
clc;
clear;
close;
// Given data
V_S = 10;// in V
R1 = 1.5*10^3;// in ohm
R2 = 1.8*10^3;// in ohm
I_T = V_S/(R1+R2);// in A
disp(I_T*10^3,"Using the ideal diode, the total current in mA is ");
V_D1 = 0.7;// in V
V_D2 = 0.7;// in V
I_T = (V_S-V_D1-V_D2)/(R1+R2);// in A
disp(I_T*10^3,"Using the pracitcal diode, the total current in mA is");

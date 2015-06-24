// Exa 1.3
clc;
clear;
close;
// Given data
V = 10;// in V
V_BE = 0.715;// in V
V_R = 0-(V_BE - V);// in V
R = 5.6;// in  k ohm
I_R = V_R/R;// in  mA
bita = 100;
I_C = I_R * (bita/(1+bita));// in mA
disp(I_C,"For transistor Q1, the collector current in mA is");
I_C2 = I_R;// in mA
disp(I_C2,"For transistor Q2, the collector current in mA is");
I_C3 = I_R;// in mA
disp(I_C3,"For transistor Q3, the collector current in mA is");
I_C4 = I_R;// in mA
disp(I_C4,"For transistor Q4, the collector current in mA is");

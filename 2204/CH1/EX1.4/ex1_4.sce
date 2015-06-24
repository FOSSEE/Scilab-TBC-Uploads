// Exa 1.4
clc;
clear;
close;
// Given data
V = 10;// in V
V_BE = 0.715;// in V
R = 5.6;// in k ohm
I = (V-V_BE)/(R);// in mA
bita = 100;
I_C1 = (bita/(4+bita))*I;// in mA
disp(I_C1,"For transistor Q1, the collector current in mA is");
I_C2 = I_C1;// in mA
disp(I_C2,"For transistor Q2, the collector current in mA is");
I_C3 = I_C1;// in mA
disp(I_C3,"For transistor Q3, the collector current in mA is");
I_C4 = I_C1;// in mA
disp(I_C4,"For transistor Q4, the collector current in mA is");

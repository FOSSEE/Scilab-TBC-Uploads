// Exa 10.4
clc;
clear;
close;
// Given data
V_H = 10;// in V
V_L = -10;// in V
I_max = 100;// in µA
I_max = I_max * 10^-6;// in A
V_HV = 0.1;// in V
V_sat = 10;// in V
R2 = 1;// in k ohm
R1 = 199;// in  k ohm
R = (R1*R2)/(R1+R2);// in k ohm
disp(R*10^3,"The resistance in Ω is");

// Note: The unit of the answer in the book is wrong

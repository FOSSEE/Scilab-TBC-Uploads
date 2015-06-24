// Exa 3.9
clc;
clear;
close;
format('v',6)
// Given data
R = 10;// in k ohm
R = R * 10^3;// in ohm
Vi = 20;// in V
V_Z = 10;// in V
I_L = 1;// in mA
I_L = I_L * 10^-3;// in A
R_L = 10;// in k ohm
R_L = R_L * 10^3;// in ohm
V_L = (R_L/(R_L+R))*Vi;// in V
// The current flowing through the resistance 
I = (Vi-V_Z)/R;// in A
I= I*10^3;// in mA
disp(I,"The current flowing through the resistance in mA is");

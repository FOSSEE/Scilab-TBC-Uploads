// Exa 3.3
clc;
clear;
close;
format('v',5)
// Given data
P_ZM = 500;// in mW
P_ZM = P_ZM * 10^-3;// in W
V_Z = 6.8;// in V
// The value of I_ZM 
I_ZM = P_ZM/V_Z;// in A
I_ZM = I_ZM * 10^3;// in mA
disp(I_ZM,"The value of I_ZM in mA is");

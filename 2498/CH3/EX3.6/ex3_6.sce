// Exa 3.6
clc;
clear;
close;
format('v',6)
// Given data
R_L = 1.2;// in k ohm
R_L = R_L * 10^3;// in ohm
R = 220;// in ohm
V_Z = 20;// in V
// The minimum value of Vi 
Vimin = ((R_L+R)/R_L)*V_Z;// in V
disp(Vimin,"The minimum value of Vi in V is");
I_L = V_Z/R_L;// in A
I_ZM = 60;// in mA
I_ZM = I_ZM * 10^-3;// in A
// I_ZM = I_R-I_L;
I_Rmax = I_ZM + I_L;
// The maximum value of Vi 
Vimax = (I_Rmax*R)+V_Z;// in V
disp(Vimax,"The maximum value of Vi in V is");

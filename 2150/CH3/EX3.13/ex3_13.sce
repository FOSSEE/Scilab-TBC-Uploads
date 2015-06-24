// Exa 3.13
clc;
clear;
close;
// Given data
V_in1 = 18;// in V
V_in2 = 22;// in V
V_o = 6;// in V
I_L = 50;// in mA
I_L= I_L*10^-3;// in A
I_Zmin = 5;// in mA
I_Zmin= I_Zmin*10^-3;// in A
P_Z = 0.5;// in Watt
V_Z= 6;// in V
I_Zmax = P_Z/V_Z;// in A
disp(I_Zmax*10^3,"Zener diode current in mA is");
R_S1 = (V_in2 - V_Z)/(I_L+I_Zmax);// in ohm
disp(R_S1,"The minimum value of Rs in ohm is");
R_S2 = (V_in1-V_Z)/(I_L+I_Zmin);// in ohm
disp(R_S2,"The maximum value of Rs in ohm is");

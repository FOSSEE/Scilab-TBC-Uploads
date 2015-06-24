// Exa 3.15
clc;
clear;
close;
// Given data
V_L = 12;// in V
I_Lmin = 0;// in mA
I_Lmin =I_Lmin *10^-3;// in A
I_Lmax = 200;// in mA
I_Lmax =I_Lmax *10^-3;// in A
I_Zmin = 5;// in mA
I_Zmin= I_Zmin*10^-3;// in A
I_Zmax = 200;// in mA
I_Zmax= I_Zmax*10^-3;// in A
V_i = 16;// in V
V_Z = V_L;// in V
disp(V_Z,"The value of V_Z in V is");
R_Lmin = V_L/I_Lmax;// in ohm
disp(R_Lmin,"The minimum value of R_L in ohm is");
// R_L2 = V_L/I_Lmin;// in ohm
disp("The maximum value of R_L in ohm is");
disp("infinite")
I_Z = I_Zmin+I_Zmax;// in A
disp(I_Z*10^3,"The zener current in mA is");
P_Zmax = V_Z*I_Z;// in Watt
disp(P_Zmax,"The maximum value of Pz in Watt is");
R_S = (V_i-V_L)/(I_Zmin+I_Lmax);// in ohm
disp(R_S,"The value of R_S in ohm is ");

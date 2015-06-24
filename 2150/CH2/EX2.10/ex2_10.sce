// Exa 2.10
clc;
clear;
close;
// Given data
R_L = 20;// in ohm
I_Ldc = 100;// in mA
R2 = 1;// in ohm
R_F = 0.5;// in ohm
I_m = (%pi * I_Ldc)/2;// in mA
V_m = I_m*10^-3*(R2+R_F+R_L);// in V
V_srms = V_m/sqrt(2);// in V
disp(V_srms,"RMS value of secondary signal voltage in V is");
P_Ldc = (I_Ldc*10^-3)^2*R_L;// in Watt
disp(P_Ldc,"power delivered to load in Watt is");
PIV = 2*V_m;// in V
disp(PIV,"Peal inverse voltage in V is");
P_ac = (V_m)^2/(2*(R2+R_F+R_L));// in Watt
disp(P_ac,"Input power in Watt is");
Eta = P_Ldc/P_ac*100;// in %
disp(Eta,"Conversion efficiency in % is");

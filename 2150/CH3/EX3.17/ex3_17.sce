// Exa 3.17
clc;
clear;
close;
// Given data
I_Zmin = 1;// in mA
I_Zmin=I_Zmin*10^-3;// in A
I_Zmax = 5;// in mA
I_Zmax=I_Zmax*10^-3;// in A
I_Lmin = 0;// in mA
I_Lmin=I_Lmin*10^-3;// in A
I_Lmax = 4;// in mA
I_Lmax=I_Lmax*10^-3;// in A
R = 5;// in kohm
R = R * 10^3;// in ohm
V_Z = 50;// in V
disp("Part (A)")
V_max = (I_Zmax+ I_Lmin)*R+V_Z;// in V
disp(V_max,"The maximum Voltage in V is"); 
V_min = (I_Zmin+I_Lmax)*R + V_Z;// in V
disp(V_min,"The minimum Voltage in V is");
disp("Part (B)")
V_L = 50;// in V
V_in = 75;// in V
R_L = 15;// in kohm
R_L= R_L*10^3;// in ohm
I_L = V_L/R_L;// in A
V_max = (I_Zmax+I_L)*R+V_Z;// in V
disp(round(V_max),"The maximum Voltage in V is");
V_min = (I_Zmin+I_L)*R+V_Z;// in V
disp(round(V_min),"The minimum Voltage in V is");

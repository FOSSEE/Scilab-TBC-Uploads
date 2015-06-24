// Exa 3.12
clc;
clear;
close;
// Given data
V_Z = 5;// in V
I_Zmin = 2;// in mA
I_Zmin= I_Zmin*10^-3;// in A
I_Zmax = 20;// in mA
I_Zmax=I_Zmax*10^-3;// in A
R_L = 1;// in kohm
R_L = R_L * 10^3;// in ohm
I_L = V_Z/R_L;// in A
I = I_L + I_Zmin;// in A
Vin_min = V_Z + (I*R_L);// in V
disp(Vin_min,"The minimum input voltage in V is");
I = I_L + I_Zmax;// in A
Vin_max = V_Z + I* R_L;// in V
disp(Vin_max,"The maximum input voltage in V is");

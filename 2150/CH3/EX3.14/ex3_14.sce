// Exa 3.14
clc;
clear;
close;
// Given data
R_S = 91;// in ohm
V_Z = 8;// in V
P_Z = 400;// in mW
P_Z= P_Z*10^-3;// in W
R_L = 0.22;// in K ohm
R_L = R_L * 10^3;// in ohm
I_L = V_Z/R_L;// in A
I_Z = P_Z/V_Z;// in A
disp(I_Z*10^3,"The value of I_Zmax in mA is : ")
Vin_min = (V_Z*(R_S+R_L))/R_L;// in V
disp(Vin_min,"The minimum input voltage in V is");
I_R = I_L + I_Z;// in A
Vin_max = V_Z + (I_R*R_S);// in V
disp(Vin_max,"The maximum input voltage in V is");

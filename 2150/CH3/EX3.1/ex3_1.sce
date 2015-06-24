// Exa 3.1
clc;
clear;
close;
// given data
V1 = 18;// in V
V2 = 10;// in V
R = 270;// in ohm
I_S = (V1-V2)/R;// in A
V_L = 10;// in V
R_L = 1;// in K ohm
R_L = R_L*1000;// in ohm
I_L = V_L/R_L;// in A
I_Z = I_S-I_L;// in A
disp(I_Z*10^3,"The zener current in mA is");

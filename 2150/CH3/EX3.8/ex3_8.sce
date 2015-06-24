// Exa 3.8
clc;
clear;
close;
// Given data
R = 1;// in K ohm
R = R * 10^3;// in ohm
V_Z = 10;// in V
V_i = 50;// in V
I_ZM = 32;// in mA
I_ZM= I_ZM*10^-3;// in A
R_Lmin = (R*V_Z)/(V_i-V_Z);// in ohm
disp(R_Lmin,"The minimum value of R_L in ohm is : ")
V_R = V_i-V_Z;// in V
I_R = V_R/R;// in A
I_Lmin = I_R-I_ZM;// in A
disp(I_Lmin*10^3,"The minimum value of I_L in mA is : ");
R_Lmax = V_Z/I_Lmin;// in ohm
disp(R_Lmax*10^-3,"The maximum value of R_L in kohm is");

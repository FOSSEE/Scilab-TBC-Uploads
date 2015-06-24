// Exa 7.10
clc;
clear;
close;
// Given data
I_D = 12;// in mA
I_D= I_D*10^-3;// in A
I_DSS = I_D;// in A
V_DS = 6.36;// in V
g_mo = 4000;// in µS
g_mo=g_mo*10^-6;// in S
g_m = g_mo;// in S
R_D = 470;// in ohm
R_L = 2;// in kohm
R_L = R_L * 10^3;// in ohm
r_d = (R_D*R_L)/(R_D+R_L);// in ohm
disp(r_d,"The value of r_d in Ω is : ")
A_v = g_m*r_d;
disp(A_v,"The value of A_v is : ")
V_in = 100;// in mV
V_in = V_in *10^-3;// in V
V_out = A_v*V_in;// in V
disp(V_out,"The value of Vout in V is");

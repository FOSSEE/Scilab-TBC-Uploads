// Exa 5.7
clc;
clear;
close;
format('v',6)
// Given data
I_C = 1;// in mA
V_T = 26;// in mV
g_m = I_C/V_T;// in S
disp(g_m*10^3,"The value of g_m in mS is");
h_fe = 224;// unit less
r_b_desh_e= h_fe/g_m;// in ohm
disp(r_b_desh_e*10^-3,"The value of r_b''e in k ohm is");
h_ie = 6;// in k ohm
h_ie = h_ie  *10^3;// in ohm
r_b_desh_b= h_ie - r_b_desh_e;// in ohm
disp(r_b_desh_b,"The value r_b''b in ohm is");
fT = 80;// in MHz
fT = fT * 10^6;// in Hz
C_b_desh_c = 12;// in pF
C_b_desh_c = C_b_desh_c* 10^-12;// in F
C_b_desh_e= (g_m/(2*%pi*fT)) - C_b_desh_c;// in F
C_b_desh_e=C_b_desh_e*10^12;// in pF
disp(C_b_desh_e,"The value of C_b''e in pF is");

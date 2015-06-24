// Exa 5.4
clc;
clear;
close;
// Given data
I_CQ = 5;// in mA
I_CQ = I_CQ * 10^-3;// in A
V_VEQ = 10;// in V
h_ie = 600;// in ohm
h_fe = 100;
C_C = 3;// in pF
C_C = C_C * 10^-12;// in F
Ai = 10;// Ai(f)
f = 10;// in MHz
// Ai = h_fe/( sqrt( 1 + ((f/f_Beta)^2) ) );
f_Beta = f/(sqrt( ((h_fe/Ai)^2) - 1 ));// in MHz
disp(f_Beta,"The Beta cut off frequency in MHz is");
f_T = h_fe*f_Beta;// in MHz
disp(f_T,"The gain bandwidth product in MHz is");
g_m = 0.1923;
Ce = g_m/(2*%pi*f_T*10^6);// in F
disp(Ce,"The value of Ce in F is");
Cbe= Ce;// in F
disp(Cbe*10^12,"The value of C_b''e in pF is : ")
r_be = h_fe/g_m;// in ohm
disp(r_be,"The value of r_b''e in ohm is");
r_bb = h_ie - r_be;// in ohm
disp(r_bb,"The value of r_bb'' in ohm is");

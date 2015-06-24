// Exa 1.7
clc;
clear;
close;
// Given data
format('v',7)
V_EE= 5;// in volt
R_C= 2;// in k ohm
R_C= R_C*10^3;// in ohm
R_E= 4.3;// in k ohm
R_E= R_E*10^3;// in ohm
V_BE=0.7;// in volt (Assuming)
V_T= 26*10^-3;// in volt
I_E = (V_EE-V_BE)/(2*R_E);// in amp
re_desh= V_T/I_E;// in ohm
A_d = R_C/(2*re_desh);
A_cm= R_C/(2*R_E+re_desh);
disp(A_cm,"Common mode gain");
CMRR= A_d/A_cm;
disp(CMRR,"Common mode rejection ratio")


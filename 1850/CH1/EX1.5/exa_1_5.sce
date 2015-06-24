// Exa 1.5
clc;
clear;
close;
// Given data
format('v',7)
V_CC= 15;// in volt
V_EE= 15;// in volt
V_BE= 0.7;// in volt
R_C= 1;// in M ohm
R_C= R_C*10^6;// in ohm
R_E= R_C;// in ohm

Bita_ac= 100;
I_E = (V_EE-V_BE)/(2*R_E);// in amp
re_desh= (26*10^-3)/I_E;// in ohm
A_d = R_C/re_desh;
disp(A_d,"Voltage gain ");
Z_in= 2*Bita_ac*re_desh;// in ohm
disp(Z_in*10^-6,"Input impedence in M ohm");
Z_out= R_C;// in ohm
disp(Z_out*10^-6,"Output impedence in M ohm");
A_cm= R_C/(2*R_E+re_desh);
CMRR= A_d/A_cm;
disp(CMRR,"Common-mode rejection ratio");
disp("When v_in is zero, the ac output voltage is zero. So total output voltage at the quiescent value in volt")
I_C=I_E;
V_out= V_CC-I_C*R_C;// in volt
disp(V_out);
// when v_in = 1
v_in= 1;// in mV
v_in= v_in*10^-3;// in volt
disp("When v_in = 1 mv, the ac output voltage in volt");
v_out= A_d*v_in;
disp(v_out);

// Note : Answer of CMRR in the book is wrong due to wrong calculation of A_cm

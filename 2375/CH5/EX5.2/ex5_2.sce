// Exa 5.2
clc;
clear;
close;
format('v',6)
// Given data
I_C = 10;// in mA
I_C =I_C * 10^-3;// in A
V_CE = 10;// in V
V_T= 26*10^-3;// in V
h_ie = 500;// in ohm
h_oe = 4*10^-5;// in S
h_fe  = 100;
g_be = 1/260;
h_re = 10^-4;
f_T = 50;// in MHz
f_T = f_T * 10^6;// in Hz
T = 300;// in K
Cob =3;// in pF
Cob = Cob * 10^-12;// in F
// (i) Transconductance
g_m = I_C/V_T;// in A/V
g_m= round(g_m*10^3);// in mA/V
disp(g_m,"The Transconductance in mA/V is");
// (ii) Input resistance
g_m= g_m*10^-3;// in A/V
r_be = round(h_fe/g_m);// in ohm
disp(r_be,"The input resistance in ohm is");
// (iii) Base spreading resistance 
r_bb = h_ie - r_be;// in ohm
disp(r_bb,"The base spreading resistance in ohm is");
// (iv) The feedback conductance 
format('e',8)
g_bc = h_re*g_be;
disp(g_bc,"The feedback conductance is");
// (v) The output conductance 
g_ce = h_oe - (1+h_fe)*g_bc
disp(g_ce,"The output conductance is : ")
// (vi) Capacitance
format('v',6)
Cbe= g_m/(2*%pi*f_T);// in F
Cbe= Cbe*10^12;// in pF
disp(Cbe,"The value of C_b''e in pF is : ")
Cc= Cob;// in F
Cc= Cc*10^12
disp(Cc,"The value of Cc in pF is : ")

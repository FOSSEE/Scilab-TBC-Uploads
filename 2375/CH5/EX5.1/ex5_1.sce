// Exa 5.1
clc;
clear;
close;
format('v',6)
// Given data
I_C = 2;// in mA
I_C =I_C * 10^-3;// in A
V_CEQ = 20;// in V
h_fe = 100;
I_BQ = 20;// in µA
I_BQ = I_BQ * 10^-6;// in A
Beta = 100;
f_T = 50;// in MHz
f_T = f_T * 10^6;// in Hz
Cob = 3;// in pF
Cob = Cob * 10^-12;// in F
h_ie = 1400;// in ohm
T = 300;// in K
// (i) Transconductance
g_m = 11600*(I_C/T);// in S
g_m=g_m*10^6;// in µS
disp(g_m,"The transconductance in µS is");
// (ii) Input resistance
g_m=g_m*10^-6;// in S
r_be = h_fe/g_m; //in ohm 
disp(r_be,"The input resistance in ohm is");
// (iii) Capacitance
Cbc = Cob ;// in F
Cbe = g_m/(2*%pi*f_T)-Cbc;// in F 
Cbe= round(Cbe*10^12);// in pF
disp(Cbe,"The capacitance in pF is");
// (iv) Base Spreading Resistance
r_bb = round(h_ie - r_be);// in ohm
disp(r_bb,"The base spreading resistance in ohm is");

// Exa 5.9
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 12;// in V
V_EE = V_CC;// in V
I = 1;// in mA
I = I * 10^-3;// in A
R_B = 120;// in k ohm
R_B = R_B * 10^3;// in ohm
R_C = 10;// in  k ohm
R_C = R_C * 10^3;// in ohm
Rsig = 5;// in k ohm
Rsig = Rsig * 10^3;// in ohm
R_L = 5;// in k ohm
R_L = R_L * 10^3;// in  ohm
Beta = 125;// unit less
V_A = 200;// in V
Cmiu = 1;// in pF
Cmiu = Cmiu * 10^-12;// in F
fT = 1000;// in MHz
fT = fT * 10^6;// in Hz
r_x = 50;// in ohm
V_T = 25;// in mV
V_T = V_T * 10^-3;// in V
g_m = I/V_T;// in A/V
r_pie = Beta/g_m;// in ohm
r_o = V_A/I;// in ohm
Cpie = (g_m/(2*%pi*fT))-Cmiu;// in F
RdasL = (r_o*R_C*R_L)/( (r_o*R_C)+(R_C*R_L)+(R_L*r_o) );// in ohm
Gm = g_m*RdasL;// unit less
R = (R_B*Rsig)/(R_B+Rsig);// in ohm 
A_VM = (-R_B/(R_B+Rsig)) * (r_pie/(r_pie+r_x+R)) * Gm;
disp(A_VM,"The mid band gain is");
Avm = 20*log(abs(A_VM));// in dB 
Cin = Cpie+Cmiu*(1+Gm);// in F
Rdassig = (r_pie*(r_x+R))/(r_pie+(r_x+R));// in ohm
f2 = 1/( 2*%pi*Cin*Rdassig);// in Hz
f2 = f2 * 10^-3;// in kHz
disp(f2,"The upper 3-dB frequency in kHz is");

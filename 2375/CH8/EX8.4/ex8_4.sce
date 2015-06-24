// Exa 8.4
clc;
clear;
close;
format('v',6)
// Given data
V_GSQ = -2.6;// in V
I_DQ = 3.8*10^-3;// in A
V_DD = 12;// in V
R_D = 1.5*10^3;// in ohm
R_S = 680;// in ohm
I_DSS = 12*10^-3;// in A
r_d = 20*10^3;// in ohm
V_P = -6;// in V
// (a) Transconductance
g_mo = (2*I_DSS)/(abs(V_P));// in S
g_m = g_mo*(1-(V_GSQ/V_P));// in mS
g_m= g_m*10^3;// in mS
disp(g_m,"The value of g_m in mS is");
// (b) Input impedance
g_m= g_m*10^-3;// in S
Zi=R_S*((r_d+R_D)/(1+g_m*r_d))/(R_S+((r_d+R_D)/(1+g_m*r_d)))
disp(Zi,"The value of Zi in ohm is");
// (c) Output impedance
Zo = (R_D*r_d)/(R_D+r_d);// in ohm
Zo= Zo*10^-3;// in k ohm
disp(Zo,"The value of Zo in k ohm is");
// Voltage gain
//Av = Vo/Vi = (R_D*(1 + (g_m*10^-3*r_d)))/(R_D+r_d);
Av = (R_D*(1 + (g_m*r_d)))/(R_D+r_d);
disp(Av,"The value of Av is");

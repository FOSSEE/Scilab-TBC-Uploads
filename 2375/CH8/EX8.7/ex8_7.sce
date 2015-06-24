// Exa 8.7
clc;
clear;
close;
format('v',6)
// Given data
V_GSQ = -2;// in V
I_DSS = 8;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -8;// in V
YoS = 20;// in µS
YoS = YoS * 10^-6;// in S
R_D = 5.1;// in k ohm
R_D = R_D * 10^3;// in ohm
R_G = 1;// in Mohm
R_G = R_G * 10^6;// in ohm
g_mo = (2*I_DSS)/(abs(V_P));// in S
g_m = g_mo * (1 - (V_GSQ/V_P));// in S
g_m= g_m*10^3;// in mS
disp(g_m,"The value of g_m in mS is");
g_m= g_m*10^-3;// in S
r_d = 1/YoS;// in ohm
r_d= r_d*10^-3;// in k ohm
disp(r_d,"The value of r_d in k ohm is");
r_d= r_d*10^3;// in ohm
Zi = R_G;// in ohm
Zi= Zi*10^-6;// in M ohm
disp(Zi,"The value of Zi in M ohm is");
V_GS = 0;// in V
Zo = (r_d*R_D)/(r_d+R_D);// in ohm
disp(Zo,"The value of Zo in ohm is");
Av = -g_m*Zo;
disp(Av,"The value of Av is");

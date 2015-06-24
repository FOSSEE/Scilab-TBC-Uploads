// Exa 7.14
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 5;// in V
V_SS = -5;// in V
Vt = 2;// in V
I_D = 0.4;// in mA
I_D = I_D * 10^-3;// in A
miu_nCox=20*10^-6;// in A/V^2
W = 400;// in µm
L = 10;// in µm
V_GS= poly(0,'V_GS');
V_GS=I_D-(1/2)*miu_nCox*(W/L)*( (V_GS-Vt)^2 );
V_GS= roots(V_GS)
V_GS= V_GS(1);// in V
V_S= -V_GS;// in V
R_S = (V_S-V_SS)/I_D;// in ohm
R_S = R_S * 10^-3;// in k ohm
disp(R_S,"The value of R_S in k ohm is");
V_D = 1;// in V
R_D = (V_DD-V_D)/I_D;// in ohm
R_D = R_D * 10^-3;// in k ohm
disp(R_D,"The value of R_D in k ohm is");

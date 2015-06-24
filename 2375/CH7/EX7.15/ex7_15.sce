// Exa 7.15
clc;
clear;
close;
format('v',6)
// Given data
I_D= 0.4*10^-3;// in A
Vt = 2;// in V
miu_nCox = 20*10^-6;// in A/V^2
L = 10;// in µm
W = 100;// in µm
V_GS= poly(0,'V_GS');
V_GS= I_D - (1/2)*miu_nCox*(W/L)*( (V_GS-Vt)^2 );
V_GS= roots(V_GS)
V_GS= V_GS(1);// in V
V_D = V_GS;// in V
disp(V_D,"The DC voltage in V is");
V_DD = 10;// in v
R = (V_DD - V_D)/I_D;// in ohm
R = R * 10^-3;// in k ohm
disp(R,"The value R in k ohm is");

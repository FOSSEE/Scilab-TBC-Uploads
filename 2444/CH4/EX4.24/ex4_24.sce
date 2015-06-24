// Exa 4.24
clc;
clear;
close;
format('v',5)
// Given data
V_GS = -1;// in V
V_DS = -4;// in V
I_DS = 1;// in mA
I_DS = I_DS * 10^-3;// in A
g_m = 5*10^-3;// in mhos
Rds = 20;// in k ohm
Rds = Rds * 10^3;// in ohm
R_S = 1;// in k ohm
R_S = R_S * 10^3;// in ohm
R_D = 5;// in  k ohm
R_D = R_D * 10^3;// in ohm
//Av = Vout/Vin  = -g_m*(r_d||R_D||R_L) = -g_m*((R_D*Rds)/(R_D+Rds));
Av = -g_m*((R_D*Rds)/(R_D+Rds));
disp(Av,"The voltage gain is");
R_G = 500;// in k ohm
R_G  = R_G * 10^3;// in ohm
Rin = R_G;// in ohm
Rin= Rin*10^-3;// in k ohm
disp(Rin,"The value of Rin in k ohm is");
Rin= Rin*10^3;// in ohm
Rout = (R_D*Rds)/(R_D+Rds);// in ohm
Rout= Rout*10^-3;// in k ohm
disp(Rout,"The value of Rout in  k ohm is");

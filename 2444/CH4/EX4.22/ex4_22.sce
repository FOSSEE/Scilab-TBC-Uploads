// Exa 4.22
clc;
clear;
close;
format('v',6)
// Given data
R_D = 5;// in k ohm
R_D = R_D * 10^3;// in ohm
r_d = 35;// in k ohm
r_d = r_d * 10^3;// in ohm
miu = 50;// amplifier factor
g_m = miu/r_d;// in S
Av = -g_m*( (r_d*R_D)/(r_d+R_D) );
disp(Av,"The voltage gain is");
Rout = (R_D*r_d)/(R_D+r_d);// in  ohm
Rout= Rout*10^-3;// in k ohm
disp(Rout,"The output resistance in k ohm is");

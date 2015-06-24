// Exa 4.25
clc;
clear;
close;
format('v',5)
// Given data
R1 = 4;// in M ohm
R2 = 2;// in Mohm
R_G = (R1*R2)/(R1+R2);// in Mohm
Zin = R_G;// in Mohm
disp(Zin,"The input impedance in Mohm is");
R_S = 2.5;// in k ohm
R_S = R_S * 10^3;// in ohm
R_L = 25;// in k ohm
R_L =  R_L * 10^3;// in ohm
g_m = 2500;// in µS
g_m = g_m * 10^-6;// in S
Zout = (R_S*(1/g_m))/(R_S+(1/g_m));// in ohm
disp(Zout,"The output impedance in ohm is");
Av = g_m*((R_S*R_L)/(R_S+R_L))/( 1+g_m*((R_S*R_L)/(R_S+R_L)) );// unite less
disp(Av,"The voltage gain is");

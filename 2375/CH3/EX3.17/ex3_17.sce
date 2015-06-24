// Exa 3.17           (Miss printed as example 3.14)
clc;
clear;
close;
format('v',5)
// Given data
Tj = 150;//Junction temperature in degree C
P_Cmax = 125;// in mW
T = 25;// free-air temperature in degree C
T1 = 0;// in degree C
curve = (Tj-T)/(P_Cmax - T1);// in degreeC/mW
T_A = 25;// Ambient temperature in degree C
P_D = 75;// Collector junction dissipation in mW
theta = 1;// in degree C/mW
// Tj-T_A = theta*P_D;
Tj = T_A + (theta*P_D);// in degree C
disp(Tj,"The junction temperature in °C is");

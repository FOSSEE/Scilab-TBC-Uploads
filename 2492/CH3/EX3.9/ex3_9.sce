// Exa 3.9
format('v',6)
clc;
clear;
close;
// Given data
Vz = 20;// in V
V1 = 30;// in V
V2 = 50;// in V
R_L = 2;// in  k ohm
R_L = R_L * 10^3;// in ohm
I_L =Vz/R_L;// in A
I_ZK = 5*10^-3;// in mA
I_Smin = I_L+I_ZK;// in A
R_S = (V1-Vz)/I_Smin;// in ohm
I_Smax = (V2-Vz)/R_S;// in A
I_Zmax = I_Smax-(I_Smin+I_ZK);// in A
// The maximum power rating of the zener diode, 
power = I_Zmax*Vz;// in W
disp(power,"The maximum power rating of the zener diode in W is");

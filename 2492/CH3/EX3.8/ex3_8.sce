// Exa 3.8
format('v',6)
clc;
clear;
close;
// Given data
Vz = 20;// in V
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
I_L =Vz/R_L;// in A
V1 = 30;// in V
R_S = (V1-Vz)/I_L;// in ohm
V2 = 50;// in V
// The maximum current through Rs resistor,
I_S = (V2-Vz)/R_S;// in A
I_Smax = V1/R_S;// in A
I_Zmax = I_Smax-I_L;// in A
power = I_Zmax*Vz;// in W
disp(power,"The maximum power rating of the Zener diode in W is");

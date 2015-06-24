// Exa 3.5
format('v',6)
clc;
clear;
close;
// Given data
V1 = 12;// in V
Vz = 10;// in V
V = V1-Vz;// in V
I_Lmax = 10;// in mA
I_Zmin = 0.2;// in mA
I = I_Lmax+I_Zmin;// in mA
R = V/I;// in k ohm
Vz1 = 5;// in V
// The maximum current through R 
Imax = Vz1/R;// in mA
disp(Imax,"The maximum current through R in mA is");
// The power rating of zener 
power = Vz*Imax;// in mW
disp(power,"The power rating of zener in mW is");

// Exa 11.1
clc;
clear;
close;
// Given data
n = 3;
l = 80;// in mm
d = 76;// in mm
r = 8.5;
V_s = (%pi/4) * d * d * l;// in mm^3
V_s = V_s * 10^-3;// in cm^3
// r = 1+ (V_s/V_c)
V_c = (1/(r - 1)) * V_s;// in cm^3
disp(V_c*10^3,"Clearance volume of cylinder in mm^3 is : ");
C = V_s * n;// C stands for capacity of engine in cm^3
C = C * 10^-3;// in litre
disp(C,"Capacity of the engine in litre is :");

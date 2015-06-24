// Exa 3.15
clc;
clear;
close;
format('v',6)
// Given data
V_Z = 15;// in V
Vin = 24;// in V
R = 27;// in ohm
I = (Vin-V_Z)/R;// in A
// The minimum value of R_L 
R_Lmin = V_Z/I;// in ohm
disp(R_Lmin,"The minimum value of R_L in ohm is");

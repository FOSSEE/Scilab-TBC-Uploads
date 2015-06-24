// Exa 3.16
clc;
clear;
close;
format('v',6)
// Given data
R = 50;// in ohm
Vin = 10;// in V
V_Z = 6;// in V
I = (Vin-V_Z)/R;// in A
I = I * 10^3;// in mA
I_Zmin = 5;// in mA
// I = I_Z+I_L;
I_Rmax = I-I_Zmin;// in mA
// The minimum value of R 
R = V_Z/(I_Rmax*10^-3);// in ohm
disp(R,"The minimum value of R in ohm is");

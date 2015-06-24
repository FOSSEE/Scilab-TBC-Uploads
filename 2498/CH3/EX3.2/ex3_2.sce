// Exa 3.2
clc;
clear;
close;
format('v',6)
// Given data
V_Z = 4.7;// in V
r_Z = 15;// in ohm
I_Z = 20;// in mA
I_Z = I_Z * 10^-3;// in A
// The terminal voltage 
VdasZ = V_Z + (I_Z*r_Z);// in V
disp(VdasZ,"The terminal voltage in V is");

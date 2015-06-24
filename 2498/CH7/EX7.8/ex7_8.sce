// Exa 7.8
clc;
clear;
close;
format('v',6)
// Given data
V_GS = 10;// in V
I_G = 0.001;// in µA
I_G = I_G * 10^-6;// in A
// The resistance between gate and source 
R_GS = V_GS/I_G;// in ohm
R_GS = R_GS * 10^-6;// in Mohm
disp(R_GS,"The resistance between gate and source in M ohm is");

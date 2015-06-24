// Exa 5.7
clc;
clear;
close;
// Given data
Vf= 0.7;// in V
If= 10;// in mA
If= If*10^-3;// in A
toh= 70;// in ns
Cd= toh*If/Vf;// in nf
disp(Cd,"Diffusion capacitance for a si diode in nf is :")

// Exa 7.3
format('v',6)
clc;
clear;
close;
// Given data
Phi_o = 1*10^21;// in m^-2s^-1
Alpha = 1*10^5;// in m^-1
W = 25;// in µm
W =W * 10^-6;// in m
e = 1.6*10^-19;// in C
// At the front edge of intrinsic region, the generation rate of EHP
G_L1 = Alpha*Phi_o;// in m^-3s^-1
// At the back edge of intrinsic region, the generation rate of EHP
G_L2 = Alpha*Phi_o*%e^( (-Alpha*W) );// in m^-3s^-1
// Photo current density,
J_L = e*Phi_o*(1-%e^(-Alpha*W));// in A/m^2
J_L = J_L * 10^-1;// in mA/cm^2
disp(J_L,"Photo current density in mA/cm^2 is");

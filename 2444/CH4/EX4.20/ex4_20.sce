// Exa 4.20
clc;
clear;
close;
format('v',6)
// Given data
R_S = 200;// in ohm
R_L = 1200;// in ohm
h_ib = 24;// in ohm
h_rb = 4*10^-4;// unit less
h_fb = -0.98;// unit less
h_ob = 0.6;// in µA/V
h_ob = h_ob * 10^-6;// in A/V
Ai = -h_fb/(1+(h_ob*R_L));// unit less
disp(Ai,"The current gain is");
Ri = h_ib + (h_rb*Ai*R_L);// in ohm
disp(Ri,"The input impedance in ohm is");
Av = round((Ai*R_L)/Ri);// unit less
disp(Av,"The Voltage gain is");
Ais = (Ai*R_S)/(Ri+R_S);// unit less
disp(Ais,"The overall current gain is");

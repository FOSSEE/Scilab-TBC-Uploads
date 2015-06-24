// Exa 7.6
clc;
clear;
close;
// Given data
Q1 = 1600;// in kJ
Q2 = 1600;// in kJ
T1 = 800;// in K
T2 = 127;// in °C
T2 = T2 + 273;// in K
d1_phi = Q1/T1;// in kJ per K
d2_phi = Q2/T2;// in kJ per K
net_phi = d2_phi - d1_phi;// in kJ per K
disp(net_phi,"Total entrophy generated during the process in kJ/K is : ");

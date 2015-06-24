// Exa 1.2
clc;
clear;
close;
// Given data
T1 = 25;// in degree C
T2 = 100;// in degree C
del_T = T2-T1;// in degree C
I_S = (2)^7 *5;// in nA
I_S = (1.07)^5*I_S;// in nA
disp(round(I_S),"The saturation current at 100 degree C in nA is");

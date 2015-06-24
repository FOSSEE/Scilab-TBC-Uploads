// Exa 5.13
clc;
clear;
close;
// Given data
C_P = 0.998;// in kJ/kg-K
C_v = 0.707;//in kJ/kg-K
T1 = 15;// in degree C
T1 = T1  +273;// in K
T2 = 400;// in degree C
T2 = T2 + 273;// in K
Eta = (1 - (T1/T2))*100;// in %
disp(Eta,"The ideal efficiency when engine is fitted with a perfect regenerator in % is");
R = C_P-C_v;// in kJ/kg-K
r = 3;
Eta_r = 0.8;
Eta = ((R*(log(r)))*(T2-T1))/( (R*(log(r))*T2) + (1-Eta_r) * C_v * (T2-T1) )*100;// in %
disp(Eta,"The ideal efficicency when efficiency of the regenrator is 0.8 in % is");


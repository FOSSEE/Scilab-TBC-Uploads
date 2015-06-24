// Exa 5.15
clc;
clear;
close;
// Given data
C_v = 0.711;// in kJ/kg-K
T3 = 850;// in degree C
T3 = T3 + 273;// in K
T2 = 90;// in degree C
T2 = T2 + 273;// in K
E = C_v * (log(T3/T2));// Entropy change in kJ/kg-K
disp(E,"Entrophy change in kJ/kg-K is");
W = (E * (T3-T2))/2;//output work in kJ/kg
Q = T2+E;//rejected heat in kJ/kg
Q1 = W + Q;//heat supplied in kJ/kg
Eta = (W/Q1);// in %
disp(Eta,"The efficiency of cycle in % is");

// Exa 5.6
format('v',7);clc;clear;close;
// Given data
R1 = 1000;// in ohm
R2 = 1000;// in ohm
R3 = 121;// in ohm
R4 = 119;// in ohm
Rg = 200;// in ohm
E = 5;// in V
S = 1;// in mm/µA
// Calculation of Thevenin's equivalent due to change in R3 and R4
V_TH = E*( (R3/(R3+R1)) - (R4/(R4+R2)) );// in V
Req = ((R1*R3)/(R1+R3)) + ((R2*R4)/(R2+R4));// in ohm
Ig = V_TH/(Req+Rg);// in A 
Ig = Ig * 10^6;// in µA
// S = D/I;
D = S*Ig;//deflection of the galvanometer  in mm
disp(D,"The deflection of the galvanometer in mm is");

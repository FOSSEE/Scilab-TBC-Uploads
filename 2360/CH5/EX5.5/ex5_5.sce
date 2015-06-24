// Exa 5.5
format('v',7);clc;clear;close;
// Given data'
R1 = 100;// in ohm
R2 = 1000;// in ohm
R3 = 200;// in ohm
R4 = 2000;// in ohm
Rg = 200;// in ohm
S = 12;// in mm/µA
R = 5;// in ohm
R4 = R4 + R;// in ohm
E = 10;// in V
// By Thevenin's equivalent
V_TH = E*( (R3/(R1+R3)) - (R4/(R2+R4)) );// in V
Req = ((R1*R3)/(R1+R3)) + ((R2*R4)/(R2+R4));// in ohm
Ig = abs(V_TH)/(Req+Rg);// in A
Ig = Ig * 10^6;// in µA
// S =D/I;
D = S*Ig;//deflection of the galvanomter  in mm
disp(D,"The deflection of the galvanomter in mm is");

// Note:In the book the calculated value of V_TH is not correct. Correct value of V_TH is -5.546312 mV not -5.213 mV, So there is some difference between coding and the answer of the book.

// Exa 4.18
clc;
clear;
close;
format('v',5)
// Given data
h_ie = 1000;// in ohm
h_fe = 50;// unit less
h_re = 2.5*10^-4;// unit less
h_oe = 25*10^-6;// in A/V
R_L = 10;// in k ohm
R_L = R_L * 10^3;// in ohm
Rs = 100;// in ohm
Ai = -h_fe/(1 + (h_oe*R_L));// unit less
disp(Ai,"The current gain is");
Rin = h_ie - ( (h_re*h_fe)/(h_oe+(1/R_L)) );// in ohm
disp(Rin,"The input resistance in ohm is");
Av = Ai*(R_L/Rin);// unit less
disp(Av,"The voltage gain is");
Ais = Ai * (Rs/(Rin+Rs));// unit less
Avs = Av*(Rin/(Rin+Rs));// unit less
Gout = h_oe - ( (h_fe*h_re)/(h_ie+Rs) );// in S
Rout = 1/Gout;// in ohm
Rout = Rout * 10^-3;// in k ohm
disp(Rout,"The output resistance in k ohm is");
Ap = Avs*Ais;// unit less
disp(Ap,"The power gain is");

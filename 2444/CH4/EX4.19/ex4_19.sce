// Exa 4.19
clc;
clear;
close;
format('v',6)
// Given data
h_ie = 2;// in k ohm
h_ie = h_ie * 10^3;// in ohm
h_re = 2*10^-4;// unit less
h_fe = 50;// unit less
h_oe = 20*10^-6;// in A/V
R_L = 4;// in k ohm
R_L = R_L * 10^3;// in ohm
Rs = 200;// in ohm
Ai = -h_fe/( 1+(h_oe*R_L) );// unit less
disp(Ai,"The value of Ai is");
Ri = h_ie - ( (h_re*h_fe)/( h_oe+(1/R_L) ) );// in ohm
disp(Ri,"The value of Ri in ohm is");
//Av = -h_fe/( (h_oe + (1/R_L))*Rin ) = Ai*(R_L/Rin);
Av = Ai*(R_L/Ri);// unit less
disp(Av,"The value of Av is");
Gout = h_oe - ( (h_fe*h_re)/(h_ie+Rs) );// in S
Rout = 1/Gout;// in ohm
Rout = Rout * 10^-3;// in k ohm
disp(Rout,"The value of Rout in  k ohm is");
Ais = Ai * (Rs/(Ri+Rs) );// unit less
Avs = Av * (Ri/(Ri+Rs));// unit less
Ap = Av*Ai;// unit less
disp(Ap,"The value of Ap is");

// Exa 6.1
clc;
clear;
close;
format('v',8)
// Given data
Rs = 10;// in k ohm
Rs = Rs * 10^3;// in ohm
Rin = 10;// in ohm
Rout = 10;// in k ohm
Rout = Rout * 10^3;// in ohm
R_L = 10;// in ohm
Ai = 1000;// unit less
VinBY_Iin= Rin;// in ohm
VoutBY_Iin= Ai*Rout*R_L/(Rout+R_L);// in V
Av= VoutBY_Iin/VinBY_Iin;// unit less
disp(Av,"The voltage gain is : ")
Ai= (VoutBY_Iin/R_L)/((Rs+Rin)/Rs);// unit less
Ap= Av*Ai;// unit less
disp(Ap,"The power gain is : ")

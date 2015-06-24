// Exa 6.25
clc;
clear;
close;
format('v',5)
// Given data
V_CC = 20;// in V
R1 = 10;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 10;// in k ohm
R2 = R2 * 10^3;// in ohm
R_E = 9.3;// in k ohm
R_E = R_E * 10^3;// in ohm
R_L = 18.6;// in k ohm
R_L = R_L * 10^3;// in ohm
V2 = (V_CC/(R1+R2))*R2;// in V
V_BE = 0.7;// in V
Ve = V2-V_BE;// in V
Ie = Ve/R_E;// in A
V_T = 25*10^-3;// in V
rdase = V_T/Ie;// in ohm
RdasE = (R_E*R_L)/(R_E+R_L);// in ohm
Beta = 100;// unit less
Zinbase = Beta*(rdase+RdasE);// in ohm
Zin =R1*R2*Zinbase/(R1*R2+R2*Zinbase+Zinbase*R1);// in ohm
Zin= Zin*10^-3;// in k ohm
disp(Zin,"The input impedance in k ohm is");

// Exa 4.2
clc;
clear;
close;
format('v',6)
// Given data
delV_BE = 0.02;// in V
delI_B = 10;// in µA
delI_B = delI_B * 10^-6;// in A
delI_C = 1;// in mA
delI_C = delI_C * 10^-3;// in A
R_C = 5;// in k ohm
R_C = R_C * 10^3;// in ohm
R_L = 10;// in k ohm
R_L = R_L * 10^3;// in ohm
Zin = delV_BE/delI_B;// in ohm
Zin= Zin*10^-3;// in k ohm
disp(Zin,"The input impedance in k ohm is");
Zin= Zin*10^3;// in ohm
Beta = delI_C/delI_B;// unit less
disp(Beta,"The current gain is");
Rac = (R_C*R_L)/(R_C+R_L);// in ohm
Rac= Rac*10^-3;// in k ohm
disp(Rac,"The AC load resistance in k ohm is");
Rac= Rac*10^3;// in ohm
Rin = 2;// in k ohm
Rin = Rin * 10^3;// in ohm
Av = Beta*(Rac/Rin);
disp(Av,"The voltage gain is");
Ai = 100;// unit less
Ap = Av*Ai;// unit less
disp(Ap,"The power gain is");

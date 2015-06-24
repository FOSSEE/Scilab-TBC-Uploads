// Exa 8.12
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 15;// in mA
I_DSS  = I_DSS * 10^-3;// in A
V_P = -4;// in V
g_mo = (-2*I_DSS)/V_P;// in S
V_GSQ = -2;// in V
g_m = g_mo*( 1-(V_GSQ/V_P) );// in S
R_D = 2.7;// in k ohm
R_D = R_D * 10^3;// in ohm
Av1 = -g_m*R_D;// voltage gain of first stage
Av2 = Av1;// voltage gain of second stage
Av = Av1*Av2;// overall voltage gain
disp(Av,"The overall voltage gain is");
R_G = 2;// in Mohm
Rin = R_G;// in Mohm
disp(Rin,"The input impedance in Mohm is");
Rout = R_D;// in ohm
Rout= Rout*10^-3;// in k ohm
disp(Rout,"The output impedance in k ohm is");
Rout= Rout*10^3;// in ohm
Vin = 15;// in mV
Vin = Vin  * 10^-3;// in V
Vout = Av*Vin;// in V
disp(Vout,"The output voltage in V is");
R_L = 15;// in k ohm
R_L = R_L * 10^3;// in ohm
V_L = (R_L/(Rout+R_L))*Vout;// in V
disp(V_L,"The output voltage across load resistance in V is");

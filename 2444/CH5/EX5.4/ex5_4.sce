// Exa 5.4
clc;
clear;
close;
format('v',6)
// Given data
Cin = 0.02*10^-6;// in F
Cout = 0.47*10^-6;// in F
Cs = 2.2*10^-6;// in F
Rsignal = 12*10^3;// in ohm
R_G = 2*10^6;// in ohm
R_D = 1.5*10^3;// in ohm
Rout = 1.5*10^3;// in ohm
Rs = 2*10^3;// in ohm
R_L = 2.7*10^3;// in ohm
I_DSS = 15*10^-3;// in A
V_P = -4;// in V
V_GSQ = -2;// in V
V_DD = 30;// in V
g_mo = (-2*I_DSS)/V_P;// in S
g_m = g_mo * (1-(V_GSQ/V_P));// in S
fLi = 1/( 2*%pi*(Rsignal+R_G)*Cin );// in Hz
fLo = 1/( 2*%pi*(Rout+R_L)*Cout );// in Hz
Req = (Rs*(1/g_m))/(Rs+(1/g_m));// in ohm
fLs = 1/(2*%pi*Req*Cs);// in Hz
disp(fLs,"The lower cutoff frequency in Hz is");

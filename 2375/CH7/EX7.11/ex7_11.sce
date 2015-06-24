// Exa 7.11
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 5.6;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -4;// in V
R_S = 10;// in k ohm
R_S = R_S * 10^3;// in ohm
R_D = 4.7;// in k ohm
R_D = R_D * 10^3;// in ohm
V_CC = 12;// in V
V_DD = 22;// in V
// (a) Calculation to find the value of Vo at Vi = 0 V
Vi = 0;// in V
V_GS= poly(0,'V_GS');
I_D= (V_CC-V_GS)/R_S;// in A
V_GS= I_D-I_DSS*(1-V_GS/V_P)^2;// in A
V_GS= roots(V_GS)
V_GS= V_GS(2);// in V
I_D= (V_CC-V_GS)/R_S;// in A
Vo= Vi-V_GS;// in V
disp(Vo,"For Vi=0 V, The value of Vo in volts is ; ")

// (a) Calculation to find the value of Vo at Vi = 10 V
Vi = 10;// in V
V_GS= poly(0,'V_GS');
I_D= (V_DD-V_GS)/R_S;// in A
V_GS= I_D-I_DSS*(1-V_GS/V_P)^2;// in A
V_GS= roots(V_GS)
V_GS= V_GS(2);// in V
I_D= (V_CC-V_GS)/R_S;// in A
Vo= Vi-V_GS;// in V
disp(Vo,"For Vi=10 V, The value of Vo in volts is ; ")

// (a) Calculation to find the value of Vi at Vo = 10 V
Vo= 0;// in V
I_D= V_CC/R_S;// in A
V_GS= V_P*(1-sqrt(I_D/I_DSS));// in V
Vi= V_GS+Vo;// in V
disp(Vi,"For Vo=0 V, The value of Vi in volts is ; ")


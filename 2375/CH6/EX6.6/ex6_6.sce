// Exa 6.6
clc;
clear;
close;
format('v',6)
// Given data
Vt = 2;// in V
unCox = 20;// in µA/V^2
Kdasn = unCox;// in µA/V^2
W = 100;// in µm
L = 10;// in µm
V_GS = 3;// in V
V_DS = 0.5;// in V
V_GS = 3;// in V
Vt = 2;// in V
del_V = V_GS-Vt;// in V
i_D = Kdasn*10^-6*(W/L)*( del_V*V_DS - 1/2*(V_DS^2) );// in A
i_D = i_D * 10^6;// in µA
disp("Part (a) For V_D= 0.5 V, NOMS is operating in Triode region.")
disp(i_D,"The drain current in µA is");
V_DS = 1;// in V
i_D = (1/2)* Kdasn*10^-6*(W/L)*( del_V^2 );// in A
i_D = i_D * 10^6;// in µA
disp("Part (b) For V_D= 1 V, NOMS is operating in saturation region.")
disp(i_D,"The drain current in µA is");
V_DS = 5;// in V
i_D = (1/2)* Kdasn*10^-6*(W/L)*( del_V^2 );// in A
i_D = i_D * 10^6;// in µA
disp("Part (c) For V_D= 5 V, NOMS is operating in saturation region.")
disp(i_D,"The drain current in µA is");

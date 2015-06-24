// Exa 8.9
clc;
clear;
close;
format('v',5)
// Given data
Z_L = 25;// in ohm
Z_S = 10;// in k ohm
Z_S = Z_S * 10^3;// in k ohm
// Z_S = (a^2)*Z_L;
a = sqrt(Z_S/Z_L);//turn ratio of the transformer 
disp(a,"The transformer turn ratio is");
//V2 = V1/a = Vs/a;
Vs = 8;// in V
V2 = Vs/a;// in V
V_L =V2;// in V
disp(V_L,"The load voltage in V is");

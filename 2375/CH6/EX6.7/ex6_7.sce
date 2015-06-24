// Exa 6.7
clc;
clear;
close;
format('v',6)
// Given data
Vt = 2;// in V
i_D = 1;// in mA
i_D = i_D * 10^-3;// in A
V_GS = 3;// in V
// From i_D= 1/2*KnwByL*(V_GS-Vt)^2
KnwByL= 2*i_D/(V_GS-Vt)^2;
V_GS= 4;// in V
V_DS= 5;// in V
i_D= 1/2*KnwByL*(V_GS-Vt)^2;// in A
i_D= i_D*10^3;// in mA
disp(i_D,"The value of i_D in mA is : ")
r_DS= 1/(KnwByL*(V_GS-Vt));// in ohm
disp(r_DS,"The value of drain to source resistance in ohm is : ")

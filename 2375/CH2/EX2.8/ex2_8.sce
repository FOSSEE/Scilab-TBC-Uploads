// Exa 2.8
clc;
clear;
close;
format('v',6)
// Given data
V_CEsat = 0.2;// in V
V_BEsat = 0.8;// in V
Beta = 100;
R_C = 0.5* 10^3;// in ohm
R_E = 1* 10^3;// in ohm
R_B = 44* 10^3;// in ohm
V1 = 15;// in V
V2 = 15;// in V
//Applying KVL to collector circuit,  V1+V2 - I_Csat*R_C - V_CEsat - I_E*R_E = 0;
//but I_Csat = beta*I_Bmin and I_E = (1+Beta)*I_Bmin, So
I_Bmin= (V1+V2-V_CEsat)/(Beta*R_C+R_E*(1+Beta));// in A
I_Bmin= I_Bmin*10^3;// in mA
disp(I_Bmin,"The value of I_Bmin in mA is : ")
I_Bmin= I_Bmin*10^-3;// in A
I_E = (1+Beta)*I_Bmin;// in A
// Applying KVL to base emitter circuits,  V_BB-I_Bmin*R_B-V_BEsat-(I_E*R_E)-V1=0
V_BB = (I_Bmin*R_B) + V_BEsat + (I_E*R_E) - V1;// in V
disp(V_BB,"The value of V_BB which just barely saturate the transistor in V is");

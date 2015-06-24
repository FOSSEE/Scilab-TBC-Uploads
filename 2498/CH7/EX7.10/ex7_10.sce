// Exa 7.10
clc;
clear;
close;
format('v',6)
// Given data
I_D1 = 1.2;// in mA
I_D2 = 1.5;// in mA
// change in gate to source voltage,
delI_D = I_D2-I_D1;// in mA
V_GS2 = -4.10;// in V
V_GS1 = -4.25;// in V
delV_GS = V_GS2-V_GS1;// in V
// The transconductance 
g_m = delI_D/delV_GS;// in mA/V
disp(g_m,"The transconductance in mA/V is");

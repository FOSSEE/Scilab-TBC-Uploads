// Exa 8.11
clc;
clear;
close;
// Given data
V_DS1 = 14;// in V
V_DS2 = 5;// in V
del_V_DS = V_DS1-V_DS2;// in V
I_D1 = 3.3;// in mA
I_D2 = 3;// in mA
del_I_D = I_D1-I_D2;// in mA
r_d = del_V_DS/del_I_D;// in k ohms
disp(r_d,"The drain resistance in k ohms is");
V_GS1 = 0.4;// in V
V_GS2 = 0.1;// in V
del_V_GS = V_GS1-V_GS2;// in V
I_D1 = 3.3;// in mA
I_D2 = 0.71;// in mA
del_I_D = I_D1-I_D2;// in mA
g_m = del_I_D/del_V_GS;// in mA/V
g_m = g_m * 10^3;// in µmhos
disp(g_m,"The transconductance in µmhos is");
Miu =r_d*10^3*g_m*10^-6;
disp(Miu,"Amplification factor is");

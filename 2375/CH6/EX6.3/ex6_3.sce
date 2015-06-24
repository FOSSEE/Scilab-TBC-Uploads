// Exa 6.3
clc;
clear;
close;
format('v',5)
// Given data
I_Don = 10;// in mA
I_Don = I_Don * 10^-3;// in A
V_GS = -12;// in V
V_GSt = -3;// in V
//From I_Don = Kn*((V_GS-V_GSt)^2);
Kn = I_Don/((V_GS-V_GSt)^2);// in A/V
Kn= Kn* 10^3;// in mA/V
V_GS = -6;// in V
I_D = Kn*((V_GS-V_GSt)^2);// in mA
disp(I_D,"The drain current in mA is");

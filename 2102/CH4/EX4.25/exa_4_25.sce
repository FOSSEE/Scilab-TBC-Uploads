// Exa 4.25
clc;
clear;
close;
// Given data
Vout= 10;// in V
V_F= 2;// in V
Ip_max= 15;// in mA
Ip_max= Ip_max*10^-3;// in A
I_F= Ip_max;
Rs= (Vout-V_F)/I_F;// in Ω
disp(Rs,"The value of Rs in Ω is :")

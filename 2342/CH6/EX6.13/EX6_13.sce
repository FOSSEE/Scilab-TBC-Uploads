// Exa 6.13
format('v',6)
clc;
clear;
close;
// Given data
R_B= 200*10^3;// in Ω
R_C= 20*10^3;// in Ω
V_CC= 20;// in V
V_BE= 0.7;// in V
Beta= 100;
// The value of collector current
I_C= (V_CC-V_BE)/(R_C+R_B/Beta);// in A
// The collector to emitter voltage
V_CE= V_CC-I_C*R_C;// in V
// The stability factor
S= (1+Beta)/(1+Beta*(R_C/(R_C+R_B)));
I_C=I_C*10^3;// in mA
disp(I_C,"The value of collector current in mA is : ")
disp(V_CE,"The collector to emitter voltage in V is : ")
disp(S,"The stability factor is : ")


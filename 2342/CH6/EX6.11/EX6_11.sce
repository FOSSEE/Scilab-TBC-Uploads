// Exa 6.11
format('v',6)
clc;
clear;
close;
// Given data
R_B= 400*10^3;// in Ω
R_C= 2*10^3;// in Ω
R_E= 1*10^3;// in Ω
V_CC= 20;// in V
Beta= 100;
// Base current can be evaluated as,
I_B= V_CC/(R_B+Beta*R_E);// in A
// Collector current
I_C= Beta*I_B;// in A
// The collector to emitter voltage
V_CE= V_CC-I_C*(R_C+R_E);// in V
I_B= I_B*10^3;// in mA
I_C= I_C*10^3;// in mA
disp(I_B,"The value of base current in mA is : ")
disp(I_C,"The value of collector current in mA is : ")
disp(V_CE,"The collector to emitter voltage in V is : ")

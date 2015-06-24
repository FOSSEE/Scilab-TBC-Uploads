// Exa 6.9
format('v',6)
clc;
clear;
close;
// Given data
Beta= 75;
V_CC= 20;// in V
V_BE= 0;// in V
R_B= 200*10^3;// in Ω
R_C= 800;// in Ω
// Applying KVL for input side, V_CC= I_B*R_B+V_BE or
I_B= (V_CC-V_BE)/R_B;// in A
I_B=I_B*10^6;// in µA
disp(I_B,"The base current in µA is : ")
I_B=I_B*10^-6;// in A
// The collector current,
I_C= Beta*I_B;// in A
I_C=I_C*10^3;// in mA
disp(I_C,"The collector current in mA is : ")
I_C=I_C*10^-3;// in A
// Applying KVL to output side, the collector to emitter voltage 
V_CE= V_CC-I_C*R_C;// in V
disp(V_CE,"The collector to emitter voltage in V is : ")
// The stability factor,
S= 1+Beta;
disp(S,"The stability factor is : ")

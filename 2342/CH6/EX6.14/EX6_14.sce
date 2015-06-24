// Exa 6.14
format('v',6)
clc;
clear;
close;
// Given data
R_B= 100*10^3;// in Ω
R_C= 10*10^3;// in Ω
V_CC= 10;// in V
V_BE= 0;// in V
Beta= 100;
// Base current can be evaluated as,
I_B= (V_CC-V_BE)/(R_B+R_C*Beta);// in A
// The value of collector current
I_C= Beta*I_B;// in A
// The collector to emitter voltage
V_CE= V_CC-I_C*R_C;// in V
// The stability factor,
S= (1+Beta)/(1+Beta*(R_C/(R_C+R_B)));
I_C=I_C*10^3;// in mA
disp(I_C,"The value of collector current in mA is : ")
disp(V_CE,"The collector to emitter voltage in V is : ")
disp(S,"The stability factor is : ")

// Note: The calculated value of S in the book is wrong.

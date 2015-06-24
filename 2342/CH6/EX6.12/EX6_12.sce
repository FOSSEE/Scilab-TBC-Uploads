// Exa 6.12
format('v',6)
clc;
clear;
close;
// Given data
R_B= 180*10^3;// in Ω
R_C= 820;// in Ω
R_E= 200;// in Ω
V_CC= 25;// in V
V_BE= 0.7;// in V
Beta= 80;
// Collector current can be find as,
I_C= (V_CC-V_BE)/(R_E+R_B/Beta);// in A
// The collector to emitter voltage
V_CE= V_CC-I_C*(R_C+R_E);// in V
I_C=I_C*10^3;// in mA
disp(I_C,"The value of collector current in mA is : ")
disp(V_CE,"The collector to emitter voltage in V is : ")

// Note: The calculated value of V_CE in the book is wrong.

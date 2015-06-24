// Exa 4.12
format('v',5)
clc;
clear;
close;
// Given data
bita = 50;
I_B= 20;// in µA
I_B=I_B*10^-6;// in A
I_C= bita*I_B;// in A
// The emitter current,
I_E= I_C+I_B;// in A
I_E = I_E * 10^3;// in mA
disp(I_E,"The Emitter current in mA is");

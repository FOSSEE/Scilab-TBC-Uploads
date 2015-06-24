// Exa 5.13.3
clc;
clear;
close;
// Given data
alpha_dc = 0.99;
I_C = 6;// in mA
I_C= I_C*10^-3;// in A
I_CBO = 15;// in µA
I_CBO= I_CBO*10^-6;// in A
I_E = (I_C - I_CBO)/alpha_dc;// in A
I_B = I_E - I_C;// in A 
disp(I_B*10^6,"The value of I_B in µA is");

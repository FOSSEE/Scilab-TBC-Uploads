//Exa 5.14.2
clc;
clear;
close;
//Given data
alpha_dc = 0.99;
I_CBO = 10;// in µA
I_CBO= I_CBO*10^-6;// in A
I_E = 10;// in mA
I_E= I_E*10^-3;// in A
I_C = (alpha_dc * I_E) + I_CBO;// in A
disp(I_C*10^3,"The value of I_C in mA is");
I_B = I_E - I_C;// in A
I_B = I_B * 10^6;// in µA
disp(I_B,"The value of I_B in µA is");

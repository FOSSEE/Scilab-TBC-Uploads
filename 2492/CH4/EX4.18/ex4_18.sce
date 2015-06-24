//Exa 4.18
format('v',5)
clc;
clear;
close;
//Given data
alpha_dc = 0.99;
I_CBO = 10;// in µA
I_CBO= I_CBO*10^-6;// in A
I_E = 10;// in mA
I_E= I_E*10^-3;// in A
// The collector current,
I_C = (alpha_dc * I_E) + I_CBO;// in A
I_C=I_C*10^3;// in mA
disp(I_C,"The value of I_C in mA is");
I_C=I_C*10^-3;// in A
// The base current,
I_B = I_E - I_C;// in A
I_B = I_B * 10^6;// in µA
disp(I_B,"The value of I_B in µA is");

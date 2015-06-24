// Exa 2.1
clc;
clear;
close;
format('v',6)
// Given data
I_C = 15;// in mA
I_CbyI_E= 0.995;
I_E= I_C/I_CbyI_E;// in mA
I_B= 0.005*I_E;// in mA
I_CBO = 3;// in µA
I_CBO = I_CBO * 10^-3;// in mA
alpha_dc= I_C/I_E;
disp(alpha_dc,"The value of Alpha_dc is");
// I_C = Alpha_dc*I_E + I_CBO;
I_E = (I_C-I_CBO)/alpha_dc;// in mA
disp(I_E,"The value of I_E in mA is");

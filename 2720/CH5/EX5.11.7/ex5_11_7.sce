//Exa 5.11.7
clc;
clear;
close;
//Given data
I_CEo = 21;// in µA
I_CBO = 1.1;// in µA
beta_dc = (I_CEo/I_CBO) - 1;
disp(beta_dc,"Value of beta_dc is");
alpha_dc = beta_dc/(1 + beta_dc);
disp(alpha_dc,"The value of alpha_dc is");

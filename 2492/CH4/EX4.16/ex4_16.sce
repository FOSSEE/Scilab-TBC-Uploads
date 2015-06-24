//Exa 4.16
format('v',7)
clc;
clear;
close;
//Given data
I_CEo = 21;// in µA
I_CBO = 1.1;// in µA
// Value of beta_dc 
beta_dc = round((I_CEo/I_CBO) - 1);
disp(beta_dc,"Value of beta_dc is");
// The value of alpha_dc 
alpha_dc = beta_dc/(1 + beta_dc);
disp(alpha_dc,"The value of alpha_dc is");

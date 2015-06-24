// Exa 6.18
format('v',6)
clc;
clear;
close;
// Given data
I_CBO = 3;//in µA
I_CBO= I_CBO*10^-3;// in mA 
I_C= 15;// in mA
// But it is given that I_C= 99.5% of I_E, SO
I_E= I_C/99.5*100;// in mA
alpha_dc= I_C/I_E;
disp(alpha_dc,"The value of alpha_dc is : ")
disp(I_E,"The value of I_E in mA is : ")

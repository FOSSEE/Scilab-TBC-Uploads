//Exa 2.27
format('v',10)
clc;
clear;
close;
//Given data
N_c = 2.8 * 10^19;
N_V = 1.04 *10^19;
T1 = 550;// in K
T2 = 300;// in K
E_g = 1.12;
KT = (0.0259) ;
n_i = sqrt(N_c *N_V *(T1/T2)^3* exp(-(E_g)/KT*T2/T1));// in cm^-3
// n_o = N_d/2 + sqrt((N_d/2)^2 + (n_i)^2)
// 1.05*N_d -N_d/2= sqrt((N_d/2)^2 + (n_i)^2)
// Minimum donor concentration required 
N_d=sqrt((n_i)^2/((0.55)^2-1/4));
disp(N_d,"Minimum donor concentration required in cm^-3 is"); 


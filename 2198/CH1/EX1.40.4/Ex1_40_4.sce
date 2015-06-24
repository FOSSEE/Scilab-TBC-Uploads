//Ex 1.40.4
clc;clear;close;
format('v',9);

//Given : 
K=1.38*10^-23;//J/K
T=27+273;//K
e=1.6*10^-19;//constant
mu_n=0.17;//m^2/V-s
mu_p=0.025;//m^2/V-s
Dn=K*T/e*mu_n;//m^2/s
disp(Dn,"Diffusion coffiecients of electron(m^2/s) : ");
Dp=K*T/e*mu_p;//m^2/s
disp(Dp,"Diffusion coffiecients of holes(m^2/s) : ");

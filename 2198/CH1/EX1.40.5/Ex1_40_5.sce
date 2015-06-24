//Ex 1.40.5
clc;clear;close;
format('v',9);

//Given : 
K=1.38*10^-23;//J/K
T=27+273;//K
e=1.6*10^-19;//constant
del_no=10^20;//per.m^3
tau_n=10^-7;//s
mu_n=0.15;//m^2/V-s
Dn=K*T/e*mu_n;//m^2/s
Ln=sqrt(Dn*tau_n);//m
Jn=e*Dn*del_no/Ln;//A/m^2
disp(Jn,"Diffusion current density(A/m^2) : ");

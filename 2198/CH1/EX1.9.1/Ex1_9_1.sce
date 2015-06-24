//Ex 1.9.1
clc;clear;close;
format('v',9);

//Given : 
l=6*10^-2;//m
V=1;//Volt
A=10*10^-6;//m^2
I=10*10^-3;//A
q=1.602*10^-19;//Coulomb
mu_n=1300*10^-4;//m^2/V-s
E=V/l;//V/m
v=mu_n*E;//m/s
J=I/A;//A/m^2
n=J/(q*mu_n*E);//per m^3
disp(n,"(i) Concentration of electron(m^3) : ");
disp(v,"(ii) Drift velocity(m/s) : ");

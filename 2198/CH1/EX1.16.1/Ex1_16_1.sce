//Ex 1.16.1
clc;clear;close;
format('v',9);

//Given : 
l=4*10^-2;//m
A=10*10^-6;//m^2
V=1;//Volt
I=5*10^-3;//A
q=1.6*10^-19;//Coulomb
mu=1300;//cm^2/V-s
J=I/A;//A/m^2
E=V/l;//V/m
n=J/(q*mu*10^-4*E)
v=mu*10^-4*E;//m/s
disp(n,"Concentration of electron(per m^3) : ");
disp(v,"Electron velocity(m/s) : ");

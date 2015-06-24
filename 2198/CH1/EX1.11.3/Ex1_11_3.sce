//Ex 1.11.3
clc;clear;close;
format('v',9);

//Given : 
A=1*10^-6;//m^2
R=3.6*10^-4/10^-2;//ohm/m
n=9*10^26;//electrons/m^3
J=3*10^6;//A/m^2
q=1.6*10^-19;//Coulomb
I=J*A;//A
disp(I,"(i) Current in A : ");
rho=R*A;//ohm-m
sigma=1/rho;//(ohm-m)^-1
disp(sigma,"(ii) Conductivity in (ohm-m)^-1");
v=J/n/q;//m/s
disp(v,"(iii) velocity of free electrons in m/s : ");
mu=sigma/n/q;//m^2/V-s
disp(mu,"(iv) Mobility in m^2/V-s ; ");

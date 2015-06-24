//Ex 1.15.2
clc;clear;close;
format('v',9);

//Given : 
rho=220*10^3*10^-2;//ohm/m
d=2.2*10^-3;//m
w=2*10^-3;//m
B=0.1;//Wb/m^2
I=5*10^-6;//A
VH=28*10^-3;//V
sigma=1/rho;//(ohm-m)^-1
RH=VH*w/(B*I);//ohm
mu=sigma*RH;//m^2/V-s
disp(mu,"Mobility(m^2/V-s) : ");

//Exa 2.20
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
rho=0.00912;//in ohm-m
B=0.48;//in Wb/m^2
RH=3.55*10^-4;//in m^3-coulamb^-1
SIGMA=1/rho;//in (ohm=m)^-1
THETAh=atand(SIGMA*B*RH);//in Degree
disp(THETAh,"Hall angle in degree : ");
//Exa 2.14
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
resistivity=9*10^-3;//in ohm-m
RH=3.6*10^-4;//in m^3-coulamb^-1
SIGMA=1/resistivity;//in (ohm-m)^-1
rho=1/RH;//in cooulamb/m^3
n=rho/e;//in m^-3
disp(n,"Density of charge carriers in m^-3 : ");
MU=SIGMA*RH;//in m^2/V-s
disp(MU,"Mobility in m^2/V-s : ");
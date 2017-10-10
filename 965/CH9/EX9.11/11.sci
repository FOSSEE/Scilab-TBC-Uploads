clc;
clear all;
disp("heat transfer rate")
L=0.5;//m
b=1;//m
ts=30;// degree C
rho=980.3;//kg/m^3
k=66.4*10^(-2);//W/m.C
mu=434*10^(-6);// kg/ms
hfg=2257*10^3;// J/kg
g=9.81;// m/s
tsat=100;// degree C
ts=30;// degree C
h=0.943*(rho^2*k^3*g*hfg/(mu*L*(tsat-ts)))^0.25;
Q=h*L*b*(tsat-ts)*3600/1000;
disp("kJ/h",Q,"rate of heat transfer per metre width, Q =")
m=Q*1000/hfg;
disp("kg/h",m,"The condensate rate per metre width =")

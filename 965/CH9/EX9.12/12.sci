clc;
clear all;
disp("film thickness at bottom")
L=0.35;//m
b=.42;//m
ts=40;// degree C
rho=977.8;//kg/m^3
k=0.667;//W/m.C
mu=400*10^(-6);// kg/ms
hfg=2257*10^3;// J/kg
g=9.81;// m/s
tsat=100;// degree C
del=(4*k*mu*(tsat-ts)*L/(g*rho^2*hfg))^0.25;
disp("mm",del*1000,"The film thickness at the bottom of plate =")
u=rho*g*del^2/(2*mu);
disp("m/s",u,"Maximum velocity at the bottom of plate =")
h=0.943*(rho^2*k^3*g*hfg/(mu*L*(tsat-ts)))^0.25;
Q=h*L*b*(tsat-ts);
disp("kW",Q/1000,"rate of heat transfer per metre width, Q =")


clc;
clear all;
disp("heat transfer rate")
d=0.06;//m diameter
L=1.2;//m
ts=50;// degree C
tsat=100;//degree C
rhol=975;//kg/m^3
mu=375*10^(-6);// Ns/m^2
k=0.67;// W/m.C
rhov=0.596;// kg/m^3
hfg=2257*10^3;// J/kg
g=9.81;//m/s
h=1.13*(rhol*(rhol-rhov)*k^3*g*hfg/(mu*L*(tsat-ts)))^0.25;
Q=h*(%pi*d*L)*(tsat-ts);
disp("kW",Q/1000,"The rate of heat transfer =")
m=Q/hfg;//kg/s
disp("kg/h",m*3600,"rate of condensation of steam =")
Re=4*m/(%pi*d*mu);
disp(Re,"Re =")

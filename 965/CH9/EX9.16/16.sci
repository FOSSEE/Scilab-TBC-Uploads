clc;
clear all;
disp("heat transfer coefficient")
n=625;// number of tubes
N=n^0.5;
d=0.006;//m diameter
ts=25;// degree C
tsat=54;//degree C
rhol=992;//kg/m^3
mu=663*10^(-6);// Ns/m^2
k=0.631;// W/m.C
rhov=0.098;// kg/m^3
hfg=2373*10^3;// J/kg
g=9.81;//m/s
h=0.725*(rhol*(rhol-rhov)*k^3*g*hfg/(N*mu*d*(tsat-ts)))^0.25;
disp("W/m^2.C",h,"The heat transfer coefficient =")
ml=h*%pi*d*(tsat-ts)/hfg;//kg/s
m=n*ml;
disp("kg/s.m",m,"rate of condensation of steam for complete array  =")

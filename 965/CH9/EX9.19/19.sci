clc;
clear all;
disp("heat transfer coefficient")
m=1800/3600;// kg/s
d=8/1000;//m
ts=24;// degree C
tsat=45.8;// degree C
rhov=0.0676;// kg/m^3
hf=2393*10^(3);// J/kg
rhol=993.95;// kg/m^3
k=62.53*10^(-2);// W/m.C
mu=728.15*10^(-6);// kg/m.s
n=400;
N=n^0.5;
h=0.725*(rhol*(rhol-rhov)*k^3*g*hfg/(N*mul*(tsat-ts)*d));
disp("W/m^2.C",h,"Average heat transfer coefficient =")
Q=m*hfg;
L=Q/(%pi*d*h*(tsat-ts));
disp("m",L,"Length of each tube, assuming single pass =")


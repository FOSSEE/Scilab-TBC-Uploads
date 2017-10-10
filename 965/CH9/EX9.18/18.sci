clc;
clear all;
disp("heat transfer rate")
L=3.2;//m
d=0.006;//m diameter
ts=54;// degree C
tsat=100;//degree C
rhol=973.7;//kg/m^3
mu=365*10^(-6);// Ns/m^2
k=0.668;// W/m.C
rhov=0.596;// kg/m^3
hfg=2257*10^3;// J/kg
g=9.81;//m/s
disp("h=0.0077*(rhol*(rhol-rhov)*k^2*g/(mu^2))^0.333*Re^0.4")
disp("Eliminating h from euqation we get the condition that the flow will be turbulent if ")
disp("0.00296*((rhol*(rhol-rhov)*k^3*g*(tsat-ts)^3*L^3/(mu^5*hfg^3))^(5/9)>1800")
x=0.00296*(rhol*(rhol-rhov)*k^3*g*(tsat-ts)^3*L^3/(mu^5*hfg^3))^(5/9);
if(x>1800)
Re=x
h=0.0077*(rhol*(rhol-rhov)*k^2*g/(mu^2))^0.333*Re^0.4
Q=h*L*1*(tsat-ts);
disp("kW/m",Q/1000,"hear transfer rate per unit width =")

clc;
clear all;
disp("rate of condensate formation")
d=0.02;//m diameter
ts=84;// degree C
tsat=100;//degree C
rhol=963.4;//kg/m^3
mu=306*10^(-6);// Ns/m^2
k=0.677;// W/m.C
rhov=0.596;// kg/m^3
hfg=2257*10^3;// J/kg
g=9.81;//m/s
h=0.725*(rhol*(rhol-rhov)*k^3*g*hfg/(mu*d*(tsat-ts)))^0.25;
Ql=h*(%pi*d)*(tsat-ts);
disp("W/m",Ql,"The rate of heat transfer =")
ml=Ql/hfg;//kg/s
disp("kg/h",ml*3600,"rate of condensation of steam =")


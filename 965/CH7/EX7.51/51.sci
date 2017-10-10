clc;
clear all;
disp("average heat transfer coefficient")
d=22.5/1000;// m diameter of tubes
L=5;//m length of each tube
ti=21;//degree C
to=29;// degree C
tb=(ti+to)/2;// bulk temperature
rho=996.65;// kg/m^3
mu=0.862*10^(-3);// kg/m.s
k=0.6079;// W/m.C
cp=4178;// J/kg.K
Pr=mu*cp/k;
n=200;// number of tubes
m=160/n;// kg/s mass flow rate per tube
Re=4*m/(%pi*d*mu);
Nu=0.023*Re^0.8*Pr^0.4;// mcAdams correlation
h=Nu*k/d;
disp("W/m^2.C",h,"Average heat transfer coefficient =")


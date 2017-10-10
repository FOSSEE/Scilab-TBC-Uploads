clc;
clear all;
disp("Temperautre and rate")
R=50/1000;//m
ti=900;// degree C
ta=30;//degree C
h=20;// W/(m^2.C)
rhos=7800;//kg/m^3
cs=460;// J/kg.C
tau=30;//s
k=40;//W/(m.C)


Lc=R/3;//m
Bi=h*Lc/k;
As=4*3.1416*R^2;
V=4/3*3.1416*R^3;
X=h*As*tau/(rhos*V*cs);
M=exp(-X);
t=ta+(ti-ta)*M;
disp("degree C",t," temperature of ball after 30 sec,  t =")

gradT=(ti-ta)*M*(-X/tau);
disp("C/min",gradT*60," rate of cooling after 30 seconds =")


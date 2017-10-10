clc;
clear all;
disp("spherical thermocouple junction")
h=400;//W/m^2.C
k=20;// W/m.C
c=400;// J/kg.C
rho=8500;// kg/m^3
tau=1;//second


R=tau*h*3/(rho*c)
disp("mm",2*R*1000,"Diameter =")

Lc=R/3;
Bi=h*Lc/k;
disp(Bi,"Bi =")

ti=25;//degree C
t=198;//degree C
ta=200;// degree C

As=4*3.1416*R*R;//m^2
V=4*3.1416*(R^3)/3;//m^3

X=h*As/(rho*V*c);
tau=(-1/X)*log((t-ta)/(ti-ta));
disp("s",tau,"tau =")

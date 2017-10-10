clc;
clear all;
disp("film thickness at bottom")
L=0.6;//m
b=1;//m
ts=60;// degree C
rhol=971.8;//kg/m^3
k=67.413*10^(-2);//W/m.C
mu=355.3*10^(-6);// kg/ms
hfg=2257*10^3;// J/kg
rhov=0.596;//kg/m^3
g=9.81;// m/s
tsat=100;// degree C
del=(4*k*mu*(tsat-ts)*L/(g*rhol*(rhol-rhov)*hfg))^0.25;
disp("mm",del*1000,"The film thickness at the bottom of plate =")
h=4*k/(3*del);
h=1.2*h;
disp("W/m^2.C",h,"The overall heat transfer coefficient =")
Q=h*L*b*(tsat-ts);
disp("kW",Q/1000,"rate of heat transfer per metre width, Q =")
m=Q/hfg;//kg/hr
disp("kg/hr",m*3600,"Condensate flow rate =")
Re=4*m/(mu*b);
disp(Re,"Re =")


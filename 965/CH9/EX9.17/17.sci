clc;
clear all;
disp("square plate")
x=0.4;//m
L=0.75;//mm
ts=28;// degree C
rhol=993.95;//kg/m^3
k=62.53*10^(-2);//W/m.C
mu=728.15*10^(-6);// kg/ms
hfg=2402*10^3;// J/kg
rhov=0.561;//kg/m^3
g=9.81;// m/s
tsat=42;// degree C
delx=(4*k*mu*(tsat-ts)*x/(g*rhol*(rhol-rhov)*hfg))^0.25;
disp("mm",delx*1000,"The film thickness at the bottom of plate =")
hx=k/delx;
disp("W/m^2.C",hx,"heat transfer coefficient =")
delL=(4*k*mu*(tsat-ts)*L/(g*rhol*(rhol-rhov)*hfg))^0.25;
disp("mm",delL*1000,"The film thickness at the bottom of plate =")
hL=4*k/(3*delL);
disp("W/m^2.C",hL,"heat transfer coefficient =")
h=1.2*hL;
disp("W/m^2.C",h,"The overall heat transfer coefficient =")
Q=h*L*L*(tsat-ts);
disp("kW",Q/1000,"rate of heat transfer per metre width, Q =")
m=Q/hfg;//kg/hr
disp("kg/hr",m*3600,"Condensate flow rate =")
hinc=h*(sin(%pi*25/180))^0.25;
disp("W/m^2.C",hinc,"heat transfer coefficient when the plate is inclined 25 degree with the horizontal")
Re=4*m/(mu*L);
disp(Re,"Re =")


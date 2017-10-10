clc;
clear all;
disp("Thickness of film")
L=0.4;//m
tsat=100;// degree C
hfg=2257*1000;// J/kg
ts=90;// degree C
rhol=965.3;// kg/m^3
k=0.68;// W/m.C
mu=3.153*10^(-4);// Ns/m^2
g=9.81;// m/s^2
del=(4*k*mu*(tsat-ts)*L/(g*hfg*rhol^2))^0.25;// m
disp("mm",del*1000,"Thickness of film at bottom edge of the fin ")
h=4*k/(3*del);
disp("W/m^2.C",h,"Overall heat transfer coefficient ")
Q=1.2*h*(tsat-ts)*L;
disp("W",Q,"heat transfer rate wuth McAdams correction =")

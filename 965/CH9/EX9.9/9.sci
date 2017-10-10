clc
clear all;
disp("average heat transfer coefficient")
ts=120;// degree C
d=2/100;//m
L=0.2;//m
ta=119;// degree C
psat=1.985;// bar
rhow=943;//kg/m^3
hfg=2202.2*1000;//J/kg
kw=0.686;// W/m.K
mu=273.3*10^(-6);// Ns/m^2

g=9.81;//m/s^2
del=(4*kw*mu*(ts-ta)*L/(rhol^2*g*hfg))^0.25;// 
hL=k/del;
disp("mm",del*1000,"Thickness of condensate film =")
h=4*hL/3;
disp("W/m^2.C",h,"Average heat transfer coefficient =")


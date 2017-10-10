clc
clear all;
disp("local transfer coefficient")
tsat=90;// degree C
ta=70;// degree C
L=1.5;//m
d=2.5;//m outer diameter;//
rhol=974;//kg/m^3
k=0.668;// W/m.K
mul=0.335*10^(-3);//kg/m.s
hfg=2309*1000;//J/kg
g=9.81;// m/s^2
hL=((rhol^2)*(k^3)*g*hfg/(4*mul*L*(tsat-ta)))^0.25;
disp("W/m^2.C",hL,"Local heat transfer coefficient =")
h=4*hL/3;//
disp("W/m^2.C",h,"average heat transfer coefficient =")

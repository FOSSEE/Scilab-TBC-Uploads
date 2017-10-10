clear;
clc;
printf("\nEx-6.15\n");
//page no.-190
//given
l=3;........//length of wire in m
R=0.022;....//resistance in ohm
I=15;.......//current in A
mu=4.3*10^-3;..//mobility in m^2/Vs
m=9.11*10^-31;....//mass
V=I*R........//voltage drop across Cu wire in Volt

E=V/l........//electric field in V/m

v=E*mu.......//drift velocity in m/s

printf("\ndrift velocity is 0.473*10^-3 m/s\n");
k=1.387*10^-23;.......//boltzmann constant
T=300;................//temperature in kelvin

vo=((3*k*T)/m)^(1/2)....//thermal velocity 

printf("\nthermal velocity is 1.17*10^5 m/s");


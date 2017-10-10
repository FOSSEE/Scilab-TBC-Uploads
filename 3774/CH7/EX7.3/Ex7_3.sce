// exa 7.3 Pg 204
clc;clear;close;

// Given Data
n=8;// no. of spline
d=52;// mm
D=60;// mm
pm=6;// MPa
mu=0.06;// coefficient of friction
N=320;// rpm
P=20;// kW

T=60*10**3*P/2/%pi/N;// N.m
l=8*T*10**3/pm/n/(D**2-d**2);// mm
printf('length of hub = %.f mm',l)
Rm=(D+d)/4;// mm
F=T*10**3/Rm;// N
Ff=mu*F;//N (Force of friction)
printf('\n Force required to shift the connection = %.1f N',Ff)

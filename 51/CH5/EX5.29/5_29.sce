clc;
clear;
p1=100;//psia
T1=520;//degree R
p2=14.7;//psia

//for incompressible flow

d=p1*144/(1716*T1);//where d=density, calculated by assuminng air to behave like an ideal gas
//Bernoulli equation
v2=(2*(p1-p2)*144/d)^0.5;//ft/sec
disp("ft/sec",v2,"The velocity of expanded air considering incompressible flow =")

//for compressible flow

k=1.4;//for air
d1=d;
d2=d1*((p2/p1)^(1/k));//where d2=density of expanded air
//bernoulli equation
V2=((2*k/(k-1))*((p1*144/d1)-(p2*144/d2)))^0.5;//ft/s
disp("ft/s",V2,"The velocity of expanded air considering compressible flow =")

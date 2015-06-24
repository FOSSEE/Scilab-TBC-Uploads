clc

D=0.120; // m
h=0.08; // m
c=0.001; // m
t=0.01875; // m
rev=65; // revolutions per min
T=4*10^-3; // N.m

K1=%pi*h/4/c;
K2=%pi/32/t;

u=T/(rev*2*%pi/60)/(K1*D^3+K2*D^4);
disp("viscosity of the liquid =")
disp(u)
disp("Pa.s")
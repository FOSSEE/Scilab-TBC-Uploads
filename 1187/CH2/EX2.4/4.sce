clc

m=10; // kg
M=80; // kg
H=1.5; // m
rho=1026; // kg/m^3
g=9.81; // m/s^2
d=1; // m

// m*H + M*H/2 =(M+m)(OG)

OG=(m*H + M*H/2)/(M+m);

// For vertical equilibrium, buoyancy = weight
h=(M+m)/(rho*%pi/4*d^2);

BM=(%pi*d^4/64)/(%pi*d^2*h/4);
OB=h/2;

GM=OB+BM-OG;

disp("GM =")
disp(GM)
disp("m")

disp("Since this is negative (i.e. M is below G) buoy is unstable.")
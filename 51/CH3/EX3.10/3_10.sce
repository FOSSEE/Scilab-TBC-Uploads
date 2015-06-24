clc;
clear;
T=60;//degree farenheit
z1=5;//ft
atmp=14.7;//psia
//applying bernoulli equation at points 1,2 and 3
z3=-5;//ft
v1=0;//large tank
p1=0;//open tank
p3=0;//open jet
//applying continuity equation A2*v2=A3*v3; A2=A3; so v2=v3
v3=(2*32.2*(z1-z3))^0.5;
//vapor pressure of water at 60 degree farenheit = p2=0.256 psia
p2=0.256;
z2=z1-((((p2-atmp)*144)+(0.5*1.94*v3^2))/62.4);
disp("ft",z2,"The maximum height over which the water can be siphoned without cavitation occuring=")
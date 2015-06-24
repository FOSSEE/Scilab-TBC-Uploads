clc
d1=0.05; // m
d2=0.025; // m
Cd=0.97;
dp=1200; // N/m^2
rho=1000; // kg/m^3
H=0.15; // m
theta=2; // degrees
V_f=10^(-4); // m^3
g=9.81; // m/s^2
rho_f=8000; // kg/m^3

B=d1/d2;
a=%pi/4*d1^2;

Q=Cd*a*sqrt(2*dp/rho/(B^4-1));
disp("Flow rate of water =")
disp(Q)
disp("m^3/s")

Cd=Q/(H/rho*tand(theta/2)*sqrt(8*V_f*g*rho*(rho_f-rho)*%pi));
disp("Coefficient of discharge of the rotameter =")
disp(Cd)

clc
A=0.01; // m^2
L=0.3; // m
N=60/60; // rps
V_act=10.6/3600; // m^3/s
rho=1000; // kg/m^3
g=9.81; // m/s^2
Q=10.6/3600; // m^3/s
H=15; // m

V=A*L*N;

Cd=V_act/V;
disp("Coefficient of discharge =")
disp(Cd)

P=rho*g*Q*H;
disp("The power required =")
disp(P)
disp("W")
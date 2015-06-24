clc

Cd=0.97;
d1=0.28; // m
d2=0.14; // m

g=9.81; // m/s^2
d=0.05; // difference in mercury level in metre
rho=1000; // kg/m^3
rho_m=13600; // kg/m^3

A1=%pi/4*d1^2;
A2=%pi/4*d2^2;

p_diff=(rho_m-rho)*g*d;
h=p_diff/rho/g;

Q=Cd*A1*((2*g*h)/((A1/A2)^2-1))^(1/2);

disp("Flow rate = ")
disp(Q)
disp("m^3/s")

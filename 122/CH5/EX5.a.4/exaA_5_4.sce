// Example A-5-4
// Determining K and k for required step response charecteristics

clear; clc;
xdel(winsid());
mode(0);

Mp = 0.25;
tp = 2;
J  = 1; // kg.m^2 

z = poly(0,'z');
Eq = (z*%pi)^2 - log(1/Mp)^2 * (1 - z^2);
x = roots(Eq);
zeta = abs(x(1))

wd = %pi / tp
wn = wd / sqrt(1 - zeta^2)
K  = J * wn^2
k = 2*zeta*wn / K
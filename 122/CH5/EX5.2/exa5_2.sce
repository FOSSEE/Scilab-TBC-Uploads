// Example 5-2
// Determining K and Kh for required step response charecteristics

clear; clc;
xdel(winsid());
mode(0);

Mp = 0.2;
tp = 1;
J  = 1; // kg.m^2 
B  = 1; // N-/rad/sec

z = poly(0,'z');
Eq = (z*%pi)^2 - log(1/Mp)^2 * (1 - z^2);
x = roots(Eq);
zeta = abs(x(1))

wd = %pi / tp
wn = wd / sqrt(1 - zeta^2)
K  = J * wn^2
Kh = (2*sqrt(K*J)*zeta - B) / K

sigma = wn*zeta;
_beta = atan(wd/sigma)
tr = (%pi - _beta) / wd
ts_2percent = 4 / sigma
ts_5percent = 3 / sigma
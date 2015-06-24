//Example 5.9

clc
clear

x = 2:5;
y = [27 40 55 68];

delx = x(2) - x(1);
mu1 = delx * sum(y);
mu2 = delx * sum(x.*y);

n = length(y);
l = x(1) - delx/2;
u = x(n) + delx/2;

M1 = [integrate("x",'x',l,u) u-l; integrate("x^2",'x',l,u) integrate("x",'x',l,u)];
M2 = [mu1; mu2];
M = M1\M2;

a = M(1);
b = M(2);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")

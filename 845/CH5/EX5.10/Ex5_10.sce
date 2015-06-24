//Example 5.10

clc
clear

x = 3:7;
y = [31.9 34.6 33.8 27 31.6];

delx = x(2) - x(1);
mu1 = delx * sum(y);
mu2 = delx * sum(x.*y);
mu3 = delx * sum(x^2 .*y);

n = length(y);
l = x(1) - delx/2;
u = x(n) + delx/2;

t0 = u-l;
t1 = integrate("x",'x',l,u);
t2 = integrate("x^2",'x',l,u);
t3 = integrate("x^3",'x',l,u);
t4 = integrate("x^4",'x',l,u);

M1 = [t2 t1 t0; t3 t2 t1; t4 t3 t2];
M2 = [mu1; mu2; mu3];
M1 = round(M1*10^2)/10^2;
M = M1\M2;

c = M(1);
b = M(2);
a = M(3);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")
disp(round(c*10^4)/10^4, "c =")

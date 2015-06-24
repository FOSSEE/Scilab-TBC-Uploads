clc
syms n;
f=((1/n)^2-2*(1/n))/(3*(1/n)^2+(1/n))
disp(limit(f,n,0));
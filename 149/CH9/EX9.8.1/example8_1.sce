clc
syms x n;
//put n=1/n
u=(x^(2*(1/n)-2))/(((1/n)+1)*(1/n)^0.5)
v=(x^(2*(1/n)))/((1/n+2)*(1/n+1)^0.5)
disp(limit(u/v,n,0));

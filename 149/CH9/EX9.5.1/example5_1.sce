clc
syms n;
v=1/((1/n)^2)
u=(2/n-1)/(1/n*(1/n+1)*(1/n+2))
disp(limit(u/v,n,0));
disp('both u and v converge and diverge together,hence u is convergent')
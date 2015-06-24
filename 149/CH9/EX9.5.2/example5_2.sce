clc
syms n;
v=n
u=((1/n)^2)/((3/n+1)*(3/n+4)*(3/n+7))
disp(limit(u/v,n,0));
disp('both u and v converge and diverge together,hence u is divergent')
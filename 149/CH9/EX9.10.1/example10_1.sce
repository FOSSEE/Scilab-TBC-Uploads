clc
syms x n;
u=1/(1+x^(-n));
v=1/(1+x^(-n-1));        
disp(limit(u/v,n,0));

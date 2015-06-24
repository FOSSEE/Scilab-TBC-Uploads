clc
syms x n;
u=(((factorial(n))^2)*x^(2*n))/factorial(2*n)
v=(((factorial(n+1))^2)*x^(2*(n+1)))/factorial(2*(n+1))
limit(u/v,n,%inf)
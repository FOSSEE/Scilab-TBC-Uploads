clc
syms x n;
disp('u=((4.7....(3n+1))*x^n)/(1.2.....n)')
disp('v=((4.7....(3n+4)*x^(n+1))/(1.2.....(n+1))')
disp('l=u/v=>')
l=(1+n)/((3+4*n)*x)
disp(limit(l,n,0))
//Example 3.6
clc
s=%s;
syms t;
xs=1/(s*(s^3+3*s^2+3*s+1));
disp(xs,'x(s)=')
[A]=pfss(xs)
F1=ilaplace(A(1),s,t);
F2=ilaplace(A(2),s,t);
xt=F1+F2;
disp(xt,'x(t)=')


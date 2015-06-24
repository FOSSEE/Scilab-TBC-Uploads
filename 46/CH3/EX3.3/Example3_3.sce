//Example 3.3
clc
s=%s;
syms t;
xs=2/(s*(s^2+2*s+2));
disp(xs,'x(s)=')
[A]=pfss(xs)
F1=ilaplace(A(1),s,t);
F2=ilaplace(A(2),s,t);
xt=F1+F2;
disp(xt,'x(t)=')

//Example 3.1
clc
s=%s;
xs=1/(s*(s+1));
disp(xs,'x(s)=')
syms t;
[A]=pfss(xs)
F1=ilaplace(A(1),s,t);
F2=ilaplace(A(2),s,t);
xt=F1+F2;
disp(xt,'x(t)=')

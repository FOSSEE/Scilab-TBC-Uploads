//Example 3.4
clc
s=%s;
syms t;
xs=2/((s^2+4)*(s+1));
disp(xs,'x(s)=')
[A]=pfss(xs)
F1=ilaplace(A(1),s,t);
F2=ilaplace(A(2),s,t);
xt=F1+F2;
disp(xt,'x(t)=')
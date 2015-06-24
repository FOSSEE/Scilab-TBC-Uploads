//Example 3.2
clc
s=%s;
syms t;
num=poly([-8 9 -6 0 1],'s','coeff');
den=s*(s-2)*poly([-2 -1 2 1],'s','coeff');
xs=syslin('c',num/den);
disp(xs,'x(s)=')
A=pfss(xs)
F1=ilaplace(A(1),s,t);
F2=ilaplace(A(2),s,t);
F3=ilaplace(A(3),s,t);
F4=ilaplace(A(4),s,t);
F5=ilaplace(A(5),s,t);
xt=F1+F2+F3+F4+F5;
disp(xt,'x(t)=')

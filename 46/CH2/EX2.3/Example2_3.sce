//Example 2.3
clc
s=%s;
xs=2/(s+3);
disp(xs,'x(s)=')
syms t; 
xt=ilaplace(xs,s,t);
disp(xt,'x(t)=')

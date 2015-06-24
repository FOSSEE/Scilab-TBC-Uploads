//Example 4.4
clc
syms t s a k;
xt=laplace('%e^(-a*t)*cos(k*t)',t,s);
disp(xt,'x(t)=')
x



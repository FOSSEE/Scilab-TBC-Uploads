//Ex 5.2a
clc;
syms T;
disp('x(t)=1+cos(20%pi*t)');
w=20*%pi;
f=w/(2*%pi);
T=1/(2*f);
disp(T,'minimun sampling interval');
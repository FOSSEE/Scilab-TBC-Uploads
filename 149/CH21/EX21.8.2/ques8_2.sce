//ques7
clc
disp('To find the laplace of given function in t ');
syms t s a
f=t^2*sin(a*t);
disp(laplace(f,t,s));
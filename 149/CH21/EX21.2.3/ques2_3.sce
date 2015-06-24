//ques1(ii)
clc
disp('To find the laplace of given function in t ');
syms t s
f=exp(4*t)*(cos(t)*sin(2*t));
disp(laplace(f,t,s));
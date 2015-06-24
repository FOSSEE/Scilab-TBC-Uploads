//ques1(ii)
clc
disp('To find the laplace of given function in t ');
syms t s
f=exp(3*t)*(sin(t))^2;
disp(laplace(f,t,s));
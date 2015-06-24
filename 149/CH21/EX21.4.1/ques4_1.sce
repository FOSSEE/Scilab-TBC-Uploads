//ques1(ii)
clc
disp('To find the laplace of given function in t ');
syms t s a
f=t*sin(a*t);
disp(laplace(f,t,s));
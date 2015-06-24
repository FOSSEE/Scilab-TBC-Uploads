//ques7
clc
disp('To find the laplace of given function in t ');
syms t s a
f=exp(-t)*t*sin(3*t);
l=laplace(f,t,s)
disp(l);
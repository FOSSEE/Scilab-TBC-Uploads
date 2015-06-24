//ques7
clc
disp('To find the laplace of given function in t ');
syms t s a
f=exp(-3*t)*t^3;
l=laplace(f,t,s)
disp(l);
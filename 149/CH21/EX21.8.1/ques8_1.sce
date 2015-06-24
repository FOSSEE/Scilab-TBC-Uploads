//ques7
clc
disp('To find the laplace of given function in t ');
syms t s a
f=t*cos(a*t);
disp(laplace(f,t,s));
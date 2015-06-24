//error
//ques7
clc
disp('To find the laplace of given function in t ');
syms t s a
f=(1-exp(t))/t;

l=laplace(f,t,s)
disp(l);

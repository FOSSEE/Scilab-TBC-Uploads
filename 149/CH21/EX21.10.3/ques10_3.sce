//error
//ques10
clc
disp('To find the laplace of given function in t ');
syms t s a b
f=integ(exp(t)*sin(t)/t,t,0,t);

l=laplace(f,t,s)
disp(l);

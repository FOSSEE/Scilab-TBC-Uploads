//ques10(i)
clc
disp('To find the the given integral find the laplace of tsin(t) and put s=2 ');
syms t s m
f=sin(t)*t;

l=laplace(f,t,s)
s=2

disp(eval(l));

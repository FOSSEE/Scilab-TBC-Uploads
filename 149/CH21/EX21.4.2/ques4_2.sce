//ques4(ii)
clc
disp('To find the laplace of given function in t ');
syms t s a
f=t*cos(a*t);
l=laplace(f,t,s);
disp(l);

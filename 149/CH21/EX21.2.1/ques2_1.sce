//ques1(ii)
disp('To find the laplace of given function in t ');
syms t s
f=exp(-3*t)*(2*cos(5*t)-3*sin(5*t));
disp(laplace(f,t,s));
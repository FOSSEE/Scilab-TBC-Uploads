//ques1(i)
disp('To find the laplace of given function in t ');
syms t s
disp(laplace(sin(2*t)*sin(3*t),t,s));
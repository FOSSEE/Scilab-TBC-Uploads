//ques28
syms s t
f=integ(exp(-s*t)*(t-1),t,1,2)+integ(exp(-s*t)*(3-t),t,2,3);
disp('Laplace of given function is');
disp(f);


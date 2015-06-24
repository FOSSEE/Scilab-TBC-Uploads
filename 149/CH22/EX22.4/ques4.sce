//error
//ques1
disp('To find the fourier sine transform');
syms x s m
//functtion fs=f(x)
fs=integ(sin(s*x)*exp(-x),x,0,%inf);
disp(fs);
//integ produces error
f=integ(x*sin(m*x)/(1+x^2),x,0,%inf);
disp(f);
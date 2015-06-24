//ques13
clc
disp('The complex form of series is summation of f(n,x) where n varies from -%inf to %inf and f(n,x) is given by :');
syms n x
cn=1/2*integ(exp(-x)*exp(-%i*%pi*n*x),x,-1,1);
fnx=float(cn)*exp(%i*n*%pi*x);

disp(float(fnx));

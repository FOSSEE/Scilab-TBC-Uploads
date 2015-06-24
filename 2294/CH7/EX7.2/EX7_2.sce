//Example 7.2
//Find the laplace transform and Roc of the following signal
clc;
close;
syms t;
 x=exp(-3*t)+exp(-2*t);
b=6;c=7;
s=b+c*%i;
X=integrate((exp(-(3+s)*t))+(exp(-(2+s)*t)),'t',0,%inf);
disp(X); 
disp(real(s));
disp('Since real(s)>-2,so the integral converges');

//Example 7.1.1
//Find the laplace transform and Roc of the following signal
clc;
close;
syms t;
a=5;
 x=exp(-a*t);
b=6;c=7;
s=b+c*%i;
X=integrate((exp(-(a+s)*t)),'t',0,%inf);
disp(X);
disp(real(s));
disp('Since real(s)>-a,so the integral converges');


//Example 7.3
//Find the laplace transform and Roc of the following signal
clc;
close;
syms t;
a=3;b1=-8;
 x1=exp(-a*t);
b=6;c=7;
s=b+c*%i;
X1=integrate((exp(-(a+s)*t)),'t',0,%inf);
x2=exp(-2*t);
X2=integrate((exp(-(b1+s)*t)),'t',-%inf,0);
disp(X1);
 disp(X2);
X=X1+X2;disp(X);
disp(real(s));
disp('Since -a< real(s)>-b1,so the integral converges');

//Example 7.4
//Find the laplace transform 
clc;
close;
syms t;
b=4;
 a=2;c=1;
s=a+c*%i;
X1=integrate((exp(-(b+s)*t)),'t',0,%inf);
X2=integrate((exp(-(s-b)*t)),'t',-%inf,0);
disp(X1);
 disp(X2);
X=X1+X2;disp(X)
disp(real(s));
disp('Since -b< real(s)<b,so the integral converges');

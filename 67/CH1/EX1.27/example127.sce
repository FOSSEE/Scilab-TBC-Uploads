//Example 1.27
//Energy of the signal x(t)=Aexp(-a*t).u(t)
clc;
A=2;
a=0.5;
E=integrate('(A*exp(-a*t))^2','t',0,100);//Energy of the given signal
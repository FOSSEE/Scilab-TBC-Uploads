//Example 1.5
//Sketch the signal x(t)=A[u(t+a)-u(t-a)]
clc;
A=1;
a=2;
t=-a:a
x=1;
plot(t,x)
//this signal is a finite duration signal so it is energy signal
E=integrate('1','t',-a,a);
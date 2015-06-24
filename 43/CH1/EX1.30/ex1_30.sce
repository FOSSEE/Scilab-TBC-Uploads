//Ex 1.30
//Integral of unit step function
clc;
x0=0;//lower bound
x1=0:20;//upper bound vector
X=integrate('1','x',x0,x1);
//integration of unt step seq
//resulting in ramp seq
plot(X)
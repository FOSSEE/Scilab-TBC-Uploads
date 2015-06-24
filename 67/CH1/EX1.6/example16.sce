//Example 1.6
//Sketch the signal x(t)=exp(-a*t)
clc;
t=0:1/100:10;
x=exp(-0.5*t);
plot(x)
E=integrate('(exp(-0.5*t)^2)','t',0,10)
//Energy of the signal
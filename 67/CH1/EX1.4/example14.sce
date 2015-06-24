//Example 1.4
//Sketch the signal x(t)=Asin(t)
clc;
A=0.5;
t=0:1/100:10
x=A*sin(t);
plot(x);
//since it is a periodic signal so it is power signal 
P=(integrate('((0.5)^2)*(sin(t)^2)','t',0,2*%pi))/(2*%pi);
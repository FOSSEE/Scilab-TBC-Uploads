//Perform Convolution of signals->x1=exp(-at)  0<=t<=T and x2=1    0<=t<=2T
clc;
clear;
t=0:0.01:5;
a=5;
T=12;
x1=exp(-a*t).*(t>=0&t<=T);
x2=1.*(t>=0&t<=2*T);
subplot(1,2,1)
plot(t,x1);
subplot(1,2,2)
plot(t,x2);

x=convol(x1,x2);
t1=0:1:(length(x)-1);
xset('window',1);
plot(t1,x);

//Sampling the signal at nyquist rate
clear;
clc;
close;
t=-1:0.01:1;
x=2*cos(200*%pi*t)+3*sin(100*%pi*t)-4*sin(500*%pi*t);
f1=100;
f2=50;
f3=250;
fb=max(f1,f2,f3);
Fs=2*fb;
Ts=1/Fs;
n=-10:10;
x_n=2*cos(200*%pi*n*Ts)+3*sin(100*%pi*n*Ts)-4*sin(500*%pi*n*Ts);
plot2d3('gnn',n,x_n)
xtitle("DT Signal x(n) sampled at nyquist rate","n","x[n]");

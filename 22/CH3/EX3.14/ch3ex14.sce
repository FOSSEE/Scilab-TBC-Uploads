//signals and systems
//time domain analysis of discreet time systems
//convolution
clear;
close;
clc; 
n=(0:14);
x=4^-n;
a=[1 -0.6 -0.16];
b=[5 0 0];
y=filter(b,a,x);
clf;
plot2d3(n,y); xlabel('n'); ylabel('y[n]');


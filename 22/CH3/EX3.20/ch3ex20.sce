//signals and systems
//time domain analysis of discreet time systems
//convolution by sliding tape method
clear;
close;
clc;
pi=3.14;
n=(0:14);
x=cos(2*n+pi/3);
a=[1 -1 0.16];
b=[0 1 0.32];
y=filter(b,a,x);
clf;
plot2d3(n,y); xlabel('n'); ylabel('y[n]');

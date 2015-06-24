//signals and systems
//time domain analysis of discreet time systems
//convolution by sliding tape method
clear;
close;
clc;
n=(0:14);
x=3^n;
a=[1 -3 2];
b=[0 1 2];
y=filter(b,a,x);
clf;
plot2d3(n,y); xlabel('n'); ylabel('y[n]');

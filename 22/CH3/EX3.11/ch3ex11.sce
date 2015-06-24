//signals and systems
//time domain analysis of discreet time systems
//impulse response with initial conditions
clear;
close;
clc; 
n=(0:19);
x=[1 zeros(1,length(n)-1)];
a=[1 -0.6 -0.16];
b=[5 0 0];
h=filter(b,a,x);
clf;
plot2d3(n,h); xlabel('n'); ylabel('h[n]');
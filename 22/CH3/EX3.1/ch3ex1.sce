//signals and systems
//time domain analysis of discreet time systems
//energy of a signal
clear;
close;
clc;
n=0:1:5
figure
a=gca();
plot2d(n,n);
energy=sum(n^2)
power=(1/6)*sum(n^2)
disp(energy)
disp(power)
//Example 1.1
//Sketch the continuous time signal x(t)=2*exp(-2t) and also its discrete time equivalent signal with a sampling period T = 0.2sec
clear;
clc ;
close ;
t=0:0.01:2;
x1=2*exp(-2*t);
subplot(1,2,1);
plot(t,x1);
xlabel('t');
ylabel('x(t)');
title('CONTINUOUS TIME PLOT');
n=0:0.2:2;
x2=2*exp(-2*n);
subplot(1,2,2);
plot2d3(n,x2);
xlabel('n');
ylabel('x(n)');
title('DISCRETE TIME PLOT');
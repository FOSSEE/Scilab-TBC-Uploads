//Example 1.5 (d)
//To Determine Whether Given Signal is Periodic or not
clear;
clc ;
close ;
t=0:0.01:50;
x1=cos(%pi*t/3)+cos(3*%pi*t/4);
subplot(1,2,1);
plot(t,x1);
xlabel('t');
ylabel('x(t)');
title('CONTINUOUS TIME PLOT');
n=0:0.2:50;
x2=cos(%pi*n/3)+cos(3*%pi*n/4);
subplot(1,2,2);
plot2d3(n,x2);
xlabel('n');
ylabel('x(n)');
title('DISCRETE TIME PLOT');
//Hence Given Signal is Periodic with N=24
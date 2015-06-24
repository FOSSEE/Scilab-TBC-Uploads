//Example 1.2 (d)

clc;clear;
t=-5:0.01:5;
x=-0.5*(t-4);
plot(t,x);
title('x(t)=r(-0.5t+2)');
zoom_rect([-5 0 5 5]);
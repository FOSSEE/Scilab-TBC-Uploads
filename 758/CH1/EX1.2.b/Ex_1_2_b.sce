//Example 1.2 (b)
clc;clear;
t=-5:0.01:5;
x=2*(abs(t-1/4)<0.5);
plot(t,x);
title('x(t)=2*rect(t-1/4)');
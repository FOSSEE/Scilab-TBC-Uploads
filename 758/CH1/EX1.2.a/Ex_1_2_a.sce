//Example 1.2 (a)
clc;clear;
t=-5:0.01:5;
x=1*(abs(2*t+3)<0.5);
plot(t,x);
title('x(t)=rect(2t+3)');
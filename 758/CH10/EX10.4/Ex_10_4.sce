//Example 10.4

clc; clear;
//y(n)=0.9y(n-1)+x(n)
a=0.9;
l=ceil(0.5/(1-abs(a)));
disp([-l l],'Deadband interval ')
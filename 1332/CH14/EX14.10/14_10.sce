//Example 14.10
//Spline Integration Method
//Page no. 478
clc;close;clear;

deff('y=f(x)','y=sind(%pi*x)')
deff('y=f1(x,h)','y=(f(x+h)-f(x))/h')
h=0.01;
n=2;h=0.5;a=0;b=1;
disp(integrate('f(x)','x',0,1),'I = ')

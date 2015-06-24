// Exa 2.24
clc;
clear;
close;
// Given data
x1= 49.7;
x2= 50.1;
x3= 50.2;
x4= 49.6;
x5= 49.7;
n=5;
x_bar= (x1+x2+x3+x4+x5)/5;
d1= x1-x_bar;
d2= x2-x_bar;
d3= x3-x_bar;
d4= x4-x_bar;
d5= x5-x_bar;
s= sqrt((d1^2+d2^2+d3^2+d4^2+d5^2)/(n-1));
disp(s,"Standard deviation")

//signals and systems
//fourier series for train of impulses
clear;
close;
clc;
n=-3:1:3
x = ones(1,length(n))
D_n=ones(1,length(n));
C_n=[0 0 0 1 2 2 2]
subplot(3,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3(n,x)
subplot(3,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3(n,D_n)
subplot(3,1,3)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3(n,C_n); plot(n,C_n,'r.')
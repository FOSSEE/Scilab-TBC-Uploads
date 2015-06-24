
clear;
clc;
close;
clf;
x=linspace(-3,3,11);
y=-x^2;
plot2d(x,y,3);
xtitle("curve of y=-x^2","x axis","y axis");
disp("this curve is parabola");
legend("y=-x^2");
xgrid();

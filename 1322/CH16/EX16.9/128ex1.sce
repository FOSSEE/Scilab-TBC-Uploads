
clear;
clc;
close;
clf;
x=linspace(-3,4,8);
y=(x-1)^2;
plot2d(x,y,3);
xtitle("Curve of y=(x-1)^2","x axis","y axis");
legend("y=(x-1)^2");
xgrid();

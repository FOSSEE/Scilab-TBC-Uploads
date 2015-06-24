
//129,130,131 examples
clear; 
clc;
close;
clf;
x=linspace(-3,4,8);
y=(x-1)^2-4;
plot2d(x,y,5);
xtitle("Graph of y=(x-1)^2-4","x axis","y axis");
legend("y=(x-1)^2-4");
x=poly(0,'x');
y=(x-1)^2-4;
//131 concept
disp('At these points  curve cuts the axis of x')
x=roots(y)
xgrid();

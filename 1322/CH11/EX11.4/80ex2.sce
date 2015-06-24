
//2*x+y=1
clear; 
clc;
close;
x=poly(0,'x');
x=[-2 -1 0 1 2 3];
y=1-2*x;
x_vs_y=[x;y];
plot(x,y,3)
plot(0,1,'r.->')// intercept on y-axis
plot(0.5,0,'r.->')// intercept on x-axis
xtitle("graph of the equation 2x+y=1","x axis","y axis");
xgrid;

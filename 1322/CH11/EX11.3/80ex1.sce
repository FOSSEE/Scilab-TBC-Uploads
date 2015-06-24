
//2*y-4*x=3

clear; 
clc;
close;
x=poly(0,'x');
x=[-2 -1 0 1 1.8 2];
y=(3+4*x)/2;
x_vs_y=[x;y];
plot(x,y,3)
plot(0,1.5,'r.->')//when x=0. 1.5 is intercept on y-axis
plot(-0.75,0,'r.->')//when y=0. -0.75 is intercept on x-axis
xtitle("graph of equation 2y-4x-3","x axis","y axis");
xgrid;

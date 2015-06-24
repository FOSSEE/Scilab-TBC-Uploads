
//y=mx+b
clear; 
clc;
close;
clf;
x=linspace(0,3,4);
y=x;
plot2d(x,y,1);
y=x+2;
plot2d(x,y,4);
y=x-3;
plot2d(x,y,5);
xtitle("Equations of the form y=mx+b","x axis","y axis");
legend("y=x","y=x+2","y=x-3",2);
//m is constant, b is fixed distance. (x,y) vary for different points on the line 
xgrid()
//ex(1)
mprintf("ex(1) In y=4x-7, gradient is 4.Intercept on y-axis is -7")
//ex(2)
mprintf("ex(2) In y=0.05x-11.5, gradient is 0.05 and intercept on y-axis is -11.5")



//Example 15.10
//Heun Method
//Page no. 517
clc;clear;close;
deff('y=f(x,y)','y=y*2/x')
y=2;
h=0.25;
for i=1:4
    x=1+(i-1)*h
    x1=x+h
    ye=y+h*f(x,y)
    y=y+h*(f(x,y)+f(x1,ye))/2
    printf('\n  y(%g) = %g\n',x1,y)
end
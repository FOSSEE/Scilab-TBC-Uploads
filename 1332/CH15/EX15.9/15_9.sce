//Example 15.9
//Trapezium Method
//Page no. 516
clc;clear;close;
deff('y=f(x,y)','y=x*y^2')
y=1;
h=0.2;
y2=poly(0,'y2')
for i=1:2
    x=(i-1)*h;
    x1=x+h
    y1=roots(-y2+y+h*(f(x,y)+f(x1,y2))/2)
    printf('\n  Y(%i) = %g  or  %g\n',i,y1(1),y1(2))
end
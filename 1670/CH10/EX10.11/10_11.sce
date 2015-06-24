//Example 10.11
//Heun Method
//Page no. 316
clc;clear;close;
deff('y=f(x,y)','y=(x-y)/2')
y=1;
h=0.5;
for i=1:4
    x=(i-1)*h
    x1=x+h
    p=y+h*f(x,y)
    y=y+h*(f(x,y)+f(x1,p))/2
    printf('\n  p(%g) = %g\n  y(%g) = %g\n\n',i,p,i,y)
    
end
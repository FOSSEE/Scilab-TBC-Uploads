//Example 10.1
//System of Non Linear Equations
//Page no. 311
clc;clear;close;

deff('y=f(x)','y=x^2-exp(2*x)-4')
deff('y=f1(x)','y=2*x-2*exp(2*x)')
x0=0;e=0.00001
for i=1:10
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nThe solution of this equation after %i Iterations by newton raphshon method is %.10f',i,x1)
//Example 10.12
//Third Order Runge Kutta Method
//Page no. 322
clc;clear;close;
deff('y=f(x,y)','y=x^2-y')
y=1;h=0.1;
for i=1:2
    x=(i-1)*h
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h,y+K2);
y=y+(K1+4*K2+K3)/6
printf('\ny(%g) = %.9f\n\n',x+h,y)
end
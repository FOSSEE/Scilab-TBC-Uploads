//Example 15.15
//Third Order Runge Kutta Method
//Page no. 526
clc;clear;close;
deff('y=f(x,y)','y=x-y')
y=1;x=1;h=0.1;
//scheme 1
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y-K1+2*K2);
y1=y+(K1+4*K2+K3)/6
printf('\ny(1.1) by scheme 1 = %g\n\n',y1)

//scheme 2
K1=h*f(x,y);
K2=h*f(x+h/3,y+K1/3);
K3=h*f(x+2*h/3,y+2*K2/3);
y1=y+(K1+3*K3)/4
printf('\ny(1.1) by scheme 2 = %.7f\n\n',y1)
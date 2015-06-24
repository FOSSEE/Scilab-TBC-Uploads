//Example 15.14
//Second Order Runge Kutta Method
//Page no. 525
clc;clear;close;

deff('y=f(x,y)','y=x-y')
y=1;x=1;h=0.1;
//simple runge kutta method
K1=h*f(x,y);
K2=h*f(x+h,y+K1);
y1=y+(K1+K2)/2
printf('\ny(1.1) by simple runge kutta method = %g\n\n',y1)

//euler cauchy method
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
y1=y+(K1+K2)
printf('y(1.1) by euler cauchy method = %g\n\n',y1)

//optimal method
K1=h*f(x,y);
K2=h*f(x+2*h/3,y+2*K1/3);
y1=y+(K1+3*K2)/4
printf('y(1.1) by optimal method = %g',y1)
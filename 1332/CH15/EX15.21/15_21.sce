//Example 15.21
//Implicit Runge Kutta Method
//Page no. 539
clc;clear;close;
deff('y=f(x,y)','y=x-y')
y=1;x=1;h=0.1;printf('\n')
U=[0,1/5];
v=[0,0;1/2,1/2];
a2=1;
K(1)=h*f(x,y);
K(2)=(x+h/2-y-K(1)/2)/(1/h-1/2)
y1=y+(K(1)+a2*K(2))
printf('\ny(1.1) = %.9f\n\n',y1)
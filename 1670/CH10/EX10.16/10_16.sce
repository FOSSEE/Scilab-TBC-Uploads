//Example 10.16
//Fourth Order Runge Kutta Method
//Page no. 326
clc;clear;close;
deff('y=f(x,y)','y=(2*x*y+exp(x))/(x^2+x*exp(x))')
y=0;h=0.2;
for i=1:2
    x=1+(i-1)*h
    K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
disp(K4,'K4 =',K3,'K3 =',K2,'K2 =',K1,'K1 =')
y=y+(K1+2*K2+2*K3+K4)/6
printf('\ny(%g) = %.13f\n\n\n\n',x+h,y)
end
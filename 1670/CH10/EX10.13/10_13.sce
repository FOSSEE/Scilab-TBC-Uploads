//Example 10.13
//Fourth Order Runge Kutta Method
//Page no. 323
clc;clear;close;
deff('y=f(x,y)','y=x+y')
y=1;x=0;h=0.1;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
disp(K4,'K4 =',K3,'K3 =',K2,'K2 =',K1,'K1 =')
y1=y+(K1+2*K2+2*K3+K4)/6
printf('\ny(1.1) = %.8f\n\n',y1)
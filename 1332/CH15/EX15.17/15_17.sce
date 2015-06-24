//Example 15.17
//New Variant of Runge Kutta Method
//Page no. 530
clc;clear;close;
deff('y=f(x,y)','y=x-y')
y=1;x=1;h=0.1;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
K5=h*f(x+3*h/4,y+(5*K1+7*K2+13*K3-K4)/32)
disp(K5,'K5 =',K4,'K4 =',K3,'K3 =',K2,'K2 =',K1,'K1 =')
y1=y+(K1+2*K2+2*K3+K5)/6
printf('\ny(1.1) = %.8f\n\n',y1)
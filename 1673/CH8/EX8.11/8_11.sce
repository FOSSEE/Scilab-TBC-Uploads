//example 8.11
//adam's moulton method
//page  316
clc;clear;close;
deff('y=f(x,y)','y=1+y^2');
y=0,x=0,h=0.2,f1(1)=0;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
f1(1)=y1;
printf ('\n y(0.2) by fourth order runge kutta method:%0.4f',y1);
y=y1,x=0.2,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
f1(2)=y1;
printf ('\n y(0.4) by fourth order runge kutta method:%0.4f',y1);
y=2,x=0,h=0.1;
y=y1,x=0.4,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
f1(3)=y1;
printf ('\n y(0.6) by fourth order runge kutta method:%0.4f',y1);
y_p=y1+h*(55*(1+f1(3)^2)-59*(1+f1(2)^2)+37*(1+f1(1)^2)-9)/24;
y_c=y1+h*(9*(1+(y_p-1)^2)+19*(1+f1(3)^2)-5*(1+f1(2)^2)+(1+f1(1)^2))/24;
printf(' \nthe predicted value is:%0.4f:\n ',y_p);
printf(' the computed value is:%0.4f:',y_c);
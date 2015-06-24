//example 8.9
//runge kutta method
//page  315
clc;clear;close;
deff('y=f(x,y)','y=1+y^2');
y=0,x=0,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
printf ('\n y(0.2) by fourth order runge kutta method:%0.4f',y1);
y=y1,x=0.2,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
printf ('\n y(0.4) by fourth order runge kutta method:%0.4f',y1);
y=2,x=0,h=0.1;
y=y1,x=0.4,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
printf ('\n y(0.6) by fourth order runge kutta method:%0.4f',y1);

//example 8.8
//runge-kutta formula
//page 313
clc;clear;close;
deff('y=f(x,y)','y=y-x')
y=2;x=0;h=0.1;
K1=h*f(x,y);
K2=h*f(x+h,y+K1);
y1=y+( K1+K2)/2
printf ('\n y(0.1) by second order runge kutta method:%0.4f',y1);
y=y1;x=0.1;h=0.1;
K1=h*f(x,y);
K2=h*f(x+h,y+K1);
y1=y+( K1+K2)/2
printf ('\n y(0.2) by second order runge kutta method:%0.4f',y1);
y=2,x=0,h=0.1;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
printf ('\n y(0.1) by fourth order runge kutta method:%0.4f',y1);
y=y1,x=0.1,h=0.1;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
printf ('\n y(0.1) by fourth order runge kutta method:%0.4f',y1);y=2,x=0,h=0.1;
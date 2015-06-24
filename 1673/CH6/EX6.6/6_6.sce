//derivative by cubic spline method
//example 6.6
//page 216
clc;clear;close;
x=[-2 -1 2 3];
y=[-12 -8 3 5] 
deff('y=f(x)','y=x^3/15-3*x^2/20+241*x/60-3.9');
deff('y=s2(x)','y=[((2-x)^3/6)*(14/55)+(x+1)^3/6*(-74/55)]/3+[-8-21/55]*(2-x)/3+[3-(9/6)*(-74/55)]*(x+1)/3');
h=0.0001;
x0=1.0;
y1=(s2(x0+h)-s2(x0))/h;
printf(' the value y1(%0.2f) is : %f',x0,y1);

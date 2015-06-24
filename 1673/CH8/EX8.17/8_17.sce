//cubic spline method
//example 8.17
//page 330
clc;clear;close;
deff('y=f(x)','y=cos(x)+((1-cos(1))/sin(1))*sin(x)-1');
y=[f(0) f(0.5) f(1)];
h=1/2;
Y=f(0.5);
y0=0,y2=0;
M0=-1;M1=-22/25;M2=-1;
s1_0=47/88;s1_1=-47/88;s1_05=0;
printf('the cubic spline value is %f',Y)

//example 8.7
//modified euler's method
//page 310
clc;clear;close;
h=0.05;
f=1;
deff('z=f1(x,y)','z=x^2+y');
x=0:0.05:0.1
y1=0;
y1(1)=f+h*f1(x(1),f);
y1(2)=f+h*(f1(x(1),f)+f1(x(2),y1(1)))/2;
y1(3)=f+h*(f1(x(1),f)+f1(x(3),y1(2)))/2;
y2(1)=y1(2)+h*f1(x(2),y1(2));
y2(2)=y1(2)+h*(f1(x(2),y1(2))+f1(x(3),y2(1)))/2;
y2(3)=y1(2)+h*(f1(x(2),y1(2))+f1(x(3),y2(2)))/2;
printf(' y1(0)\t y1(1)\t y1(2)\t y2(0)\t y2(1)\t y3(2)\n\n' );
printf(' %f\t    %f\t    %f\t    %f\t     %f\t    %f\n',y1(1),y1(2),y1(3),y2(1),y2(2),y2(3))
printf('\n\n the value of y at %0.2f is : %0.4f',x(3),y2(3));


//5*x^2+9*x-2=0
clear;
clc;
close;
x=poly(0,'x');
y=5*x^2+9*x-2;
a=5;b=9;c=-2;//from equation we get these values
//using the formula - solution of quadratic equation ax^2+bx+c=0
x=(-b+sqrt(b^2-4*a*c))/(2*a);
mprintf("\t x=%f  \n  \n or  ",x)
x=(-b-sqrt(b^2-4*a*c))/(2*a);
mprintf(" x=%f",x)

 

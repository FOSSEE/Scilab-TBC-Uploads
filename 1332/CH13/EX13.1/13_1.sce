//Example 13.1
//Differentiation
//Page no. 420
clc;close;clear;

deff('y=f(x)','y=x^2+5')
deff('y=f1(x,h)','y=(f(x+h)-f(x))/h')
h=0.01;x=2.4
d=f1(x,h)
d1=(f1(x+h,h)-f1(x))/h
printf('dy\n -- = %g\n dx',d)
printf('\n\n\n d2y\n --- = %g\n dx2',d1)
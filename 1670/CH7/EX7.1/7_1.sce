//Example 7.1
//Differentiation
//Page no. 230
clc;close;clear;
deff('y=f(x)','y=sin(x)')
deff('y=f1(x,h)','y=(f(x+h)-f(x-h))/(2*h)')
deff('y=f2(x,h)','y=(-f(x+2*h)+8*f(x+h)-8*f(x-h)+f(x-2*h))/(12*h)')
h=0.01;x=0.5
d=f1(x,h)
d1=f2(x,h)
printf('Centred Formula of Order O(h2) = %g\n',d)
printf('\n Centred Formula of Order O(h4) = %g',d1)
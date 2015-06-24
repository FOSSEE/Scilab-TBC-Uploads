//Example 9.6
//Recurrence formula
//Page no. 292
clc;clear;close;

x=poly(0,'x')
f=x^2-2*x+2;
z=roots(f)
disp(z,f)
r=z(1)*z(2);
r=sqrt(r);
theta=atan(real(z(1)));
printf('\n\n\t n\n(%g)   (c1*cos(n*%g)+c2*sin(n*%g)) ',r,theta,theta)
//Example 5.15
//Brent Method
//Page no. 173
clc;clear;close;
deff('y=f(x)','y=x^2+x-2')
x1=0;x2=0.5;x3=2;
r=f(x2)/f(x3);s=f(x2)/f(x1);t=f(x1)/f(x3);
q=(t-1)*(r-1)*(s-1);
p=r*t*(s-1)*(x2-x3)-s*(1-r)*(x2-x1)+(t*s-r)*x2
printf('Root is : %.10g',x2+(p/q))
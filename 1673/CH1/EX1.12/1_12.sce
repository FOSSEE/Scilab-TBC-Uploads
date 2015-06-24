//taylor series
//example 1.12
//page 12
clc;clear;close;
deff('y=f(x)','y=x^3+5*x-10');
deff('y=f1(x)','y=3*x^2-6*x+5')//first derivative
deff('y=f2(x)','y=6*x-6')//second derivative
deff('y=f3(x)','y=6')//third derivative
D=[f(0) f1(0) f2(0) f3(0)]
S1=0;
h=1;
for i=1:4
    S1=S1+h^(i-1)*D(i)/factorial(i-1);
end
printf('the third order taylors series approximation of f(1) is :%d',S1);


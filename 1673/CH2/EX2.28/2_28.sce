//graeffe's method
//example 2.28
//page 55
clc;clear;close;
deff('y=f(x)','y=x^3-6*x^2+11*x-6');
x=poly(0,'x');
g=f(-x);
printf('the equation is:\n')
disp(g(x)*f(x));
A=[1 14 49 36];//coefficients of the above equation
printf('%0.4g\n',sqrt(A(4)/A(3)));
printf('%0.4g\n',sqrt(A(3)/A(2)));
printf('%0.4g\n',sqrt(A(2)/A(1)));
printf('the equation is:\n')
disp(g*(-1*g));
B=[1 98 1393 1296];
printf('%0.4g\n',(B(4)/B(3))^(1/4));
printf('%0.4g\n',(B(3)/B(2))^(1/4));
printf('%0.4g\n',(B(2)/B(1))^(1/4));
printf('It is apparent from the outputs that the roots converge at 1 2 3')








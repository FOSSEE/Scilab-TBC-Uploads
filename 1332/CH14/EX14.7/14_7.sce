//Example 14.7
//Gaussian Quadrature Formula
//Page no. 463
clc;close;clear;

deff('y=f(x)','y=cos(x)*log(x)')
s=0;
for i=0:2:2000
    s=s+integrate('((-1)^(i/2))*(x^i)/factorial(i)*log(x)','x',0,1)
end
disp(s,'Till 1000 terms .... I =')
//Example 5.48
//Chebyshev Polynomial
//Page no. 199
clc;close;clear;

deff('y=f(x)','y=4*x^3+2*x^2');
n=4;
for i=3:-1:0
    x(i+1)=cosd(((2*i+1)*%pi)/(2*n))
    printf('\n  x(%i) = %g\n',i,x(i+1))
end
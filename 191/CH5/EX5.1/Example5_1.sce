//Construction of the quadratic interpolating polynomial to the function f(x)=ln(x) by using Lagrange's Method of interpolation.

close();
clear;
clc;
xi = linspace(2,3,3);
format('v',10);
y = [0.69315 0.91629 1.09861];
x = poly(0,'x');

//Following are the polynomials

L0 = (x-xi(2))*(x-xi(3))/((xi(1)-xi(2))*(xi(1)-xi(3)));
L1 = (x-xi(1))*(x-xi(3))/((xi(2)-xi(1))*(xi(2)-xi(3)));
L2 = (x-xi(1))*(x-xi(2))/((xi(3)-xi(1))*(xi(3)-xi(2)));
p2 = L0*y(1) + L1*y(2) + L2*y(3);
disp(p2 , 'The Required Polynomial : ')

//Showing the difference between actual and obtained value
format('v',8);
disp(log(2.7),'Actual Value of Polynomial at x=2.7')
disp(horner(p2,2.7),'Obtained Value of Polynomial at x=2.7')

err = log(2.7)-horner(p2,2.7);
disp(err , 'Error in approximation : ')
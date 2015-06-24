//illustrating the induced instability through the deflation method of polynomial factorisation.
clear;
clc;
close();
x=poly(0,'x');
p3=x^3-13*x^2+32*x-20;//Given Polynomial
roots(p3)
//suppose that an estimate of its largest zero is taken as 10.1.Now devide p3 by (x-10.1)
p2=x^2-2.9*x+2.71;//the quotient
roots(p2)
disp('induced a large error in roots')
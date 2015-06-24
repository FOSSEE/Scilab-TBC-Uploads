//Gaussian Quadrature Rule
clc;
clear;
close();
format('v',10);
funcprot(0);
disp('Integral 0 to 1 f(x)dx');
b = 1;
a = 0;
x = poly(0,'x');
p = x^2-x+1/6;
x1 = roots(p);
A = [1 1;x1'];
//X = [c0;c1];
B = [(b-a);(b^2-a^2)/2];
X = inv(A)*B;
 disp (X,'Are the c1,c2 constants : ');
 disp (x1,'Are the corresponding roots (x1,x2) : ');
 disp ('c0*f(x0)+c1*f(x1)');
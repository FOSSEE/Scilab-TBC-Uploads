clc;
clear;
x=poly(0,'s');
p=x^5 - 3.5*x^4 +2.75*x^3 +2.125*x^2 - 3.875*x + 1.25;
disp("The roots of the polynomial are:")
disp(roots(p))
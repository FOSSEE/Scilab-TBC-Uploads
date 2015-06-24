clear
clc
disp("3*x^2+5*y^2+3*z^2-2*y*z+2*z*x-2*x*y")
disp("The matrix of the given quadratic form is ")
A=[3 -1 1;-1 5 -1;1 -1 3]
disp("let R represents the matrix of transformation and P represents a diagonal matrix whose values are the eigen values of A.then ")
[R P]=spec(A)
disp("so,canonical form is 2*x^2+3*y^2+6*z^2")
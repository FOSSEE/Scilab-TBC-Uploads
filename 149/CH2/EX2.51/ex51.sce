clear
clc
disp("2*x1*x2+2*x1*x3-2*x2*x3 ")
disp("The matrix of the given quadratic form is ")
A=[0 1 1;1 0 -1;1 -1 0]
disp("let R represents the matrix of transformation and P represents a diagonal matrix whose values are the eigen values of A.then ")
[R P]=spec(A)
disp("so,canonical form is -2*x^2+y^2+z^2")
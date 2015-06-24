//Example 10.3
//determination of quadratic form
clear;clc;
xdel(winsid());
//from the given euation we get the following 
A=[9 1 -2;1 4 -1;-2 -1 1]
det(A)
A1=[9 1;1 4]
det(A1)
//since determinant of A and A1 is positive
//therefore W is positive definite.
disp("W is positive definite")

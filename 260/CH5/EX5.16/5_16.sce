//Eg-5.16
//pg-257

clear
clc

A=[4 -2 2 8;-2 6 2 4;2 2 10 -6;8 4 -6 12];

T=hess(A);

disp("required tridiagonal matrix is")
disp(T)
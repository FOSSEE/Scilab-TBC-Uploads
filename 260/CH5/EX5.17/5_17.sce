//Eg-5.17
//pg-259

clear
clc

A=[1 3 6;3 5 7;6 7 4];
T = [1 -6.7082 0;-6.7082 9.8 4.6;0 4.6 -0.8];    //The corresponding tridigonal matrix

x = poly(0,'x');

p = det(A - x*eye(3,3));
q = det(T - x*eye(3,3));

printf('\nThe characteristic polynomial of the orignal matrix A is ')
disp(p)
printf('\nThe characteristic polynomial of the tridiagonal matrix of A is ')
disp(q)

printf('\n\nIt is clear that both the polynomials are almost the same.\n')

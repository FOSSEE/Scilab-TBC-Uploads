//Eg-14.6
//pg-590

clear
clc
close()

a = [6 -6 1];
exec graeffe.sci
q = graeffe(a,10^-6);

x0 = 0;
x1 = q(2);
x2 = q(1);
x3 = 1;

P = [1 x0 x0^2 x0^3;1 x1 x1^2 x1^3;1 x2 x2^2 x2^3;1 x3 x3^2 x3^3];
Q = [0 1 2*x0 3*x0^2;0 1 2*x1 3*x1^2;0 1 2*x2 3*x2^2;0 1 2*x3 3*x3^2];
R = [0 0 2 6*x0;0 0 2 6*x1;0 0 2 6*x2;0 0 2 6*x3];

A = Q*inv(P);
B = R*inv(P);

printf('\nThe matrix A is \n')
disp(A)
printf('The matrix B is \n')
disp(B)
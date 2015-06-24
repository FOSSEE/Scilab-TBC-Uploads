clc;
syms n;
A=[0 1;-1/8 3/4];
e=spec(A);
b1=(e(2)^n-e(1)^n)/(e(2)-e(1));
b0=e(2)^n-b1*e(2);
An=b0*eye(A)+b1*A;
disp(An,"A^n")
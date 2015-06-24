clc;
syms n;
A=[2 1;0 2];
e=spec(A);//since we get equal eigen values
b1=n*e(1)^(n-1);
b0=e(1)^n-b1*e(1);
An=b0*eye(A)+b1*A;
disp(An,"A^n")
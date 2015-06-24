clc;
syms n;
A=[2 0 0;0 -2 1;0 4 1];
eig=spec(A);
m=poly(eig(1:2),"A",["roots"]);
disp(m,"minimal polynomial is")
e=spec(A);
b1=(e(2)^n-e(1)^n)/(e(2)-e(1));
b0=e(2)^n-b1*e(2);
An=b0*eye(A)+b1*A;
disp(An,"A^n")
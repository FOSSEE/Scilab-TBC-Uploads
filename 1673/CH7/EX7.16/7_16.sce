//largest eigenvalue and eigenvectors
//example 7.16
//page 286
clc;clear;close;
A=[1 6 1;1 2 0;0 0 3];
I=[1;0;0];//initial eigen vector
X0=A*I
disp(X0,'X0=')
X1=A*X0;
disp(X1,'X1=')
X2=A*X1;
disp(X2,'X2=')
X3=X2/3;
disp(X3,'X3=')
X4=A*X3;
X5=X4/4;
disp(X5,'X5=');
X6=A*X5;
X7=X6/(4*4);
disp(X7,'X7=');
printf('as it can be seen that highest eigen value is 4 \n\n the eigen vector is %d %d %d',X7(1),X7(2),X7(3));
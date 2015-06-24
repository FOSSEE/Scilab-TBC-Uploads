//Example 7.5
//Inverse of Complex Matrices
//Page no. 262
clc;clear;close;

A=[1,-1,0;2,3,4;0,1,2];
B=[1,1,3;1,3,-3;-2,-4,-4];
P=A+%i*B;
disp(P,'Matrix P=')
disp(A,'Matrix A=');disp(B,'Matrix B=');
A1=inv(A);B1=inv(B);
disp(A1,'Inverse of Matrix A=');
disp(B1,'Inverse of Matrix B=');
B1A=B1*A;disp(B1A,'Inverse(B)*A=');
AB1A_B=A*B1A+B;disp(AB1A_B,'A*Inverse(B)*A+B=');
AB1A_B1=inv(AB1A_B);disp(AB1A_B1,'Inverse(A*Inverse(B)*A+B)=');
X=B1A*AB1A_B1;disp(X,'X=');
Y=-1*AB1A_B1;disp(Y,'Y=');
Q=X+%i*Y;disp(Q,'Inverse of Matrix P=')
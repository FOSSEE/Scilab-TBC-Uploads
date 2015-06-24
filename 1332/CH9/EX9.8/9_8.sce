//Example 9.8
//Recursive Least-Square Method
//Page no. 308
clc;clear;close;

A0=[3,0;0,3;3,3];
B0=[2;2;2];
A1=[6,3];B1=[6];
A0T=A0';
G0=A0T*A0;
disp(G0,'G0=')
G0_1=inv(G0);
disp(G0_1,'Inverse of G0=')
X0=G0_1*A0T*B0;
disp(X0,'X0=')

//by recursive least square algorithm
G1=G0+A1'*A1;
disp(G1,'G1=');
G1_1=inv(G1);
disp(G1_1,'Inverse of G1')
X1=X0+G1_1*A1'*(B1-A1*X0);
disp(X1,'X1=')

//verification
A=[3,0;0,3;3,3;6,3];
B=[2;2;2;6];
AT=A';
G=AT*A;
disp(G,'G=')
G_1=inv(G);
disp(G_1,'Inverse of G=')
X=G_1*AT*B;
disp(X,'X=')
disp('Thus X and X1 are Same')
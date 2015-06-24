//page 39
clear;
close;
clc;
A=[1 1 1;1 1 3;2 5 8];
disp(A,'A=');
[L,U,P]=lu(A);
disp(L,'L=');
disp(U,'U=');
disp(P,'P=');
disp(P*A,'PA=')
disp(L*U,'LU=')
disp('This shows that PA is the same as LU')
//end
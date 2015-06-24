//page 34
clear;
close;
clc;
A=[1 2;3 8];
disp(A,'A=')
[L,U]=lu(A);
disp(L,'L=');
disp(U,'U=')
disp('LU=')
disp(L*U)
disp('This shows that LU=A')
//end
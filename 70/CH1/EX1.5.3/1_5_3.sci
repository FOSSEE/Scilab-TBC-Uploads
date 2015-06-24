//page 34
clear;
close;
clc;
disp('Given Matrix:')
A=[1 1 1;1 2 2;1 2 3];
disp(A,'A=');
[L,U]=lu(A);
disp(L,'L=');
disp(U,'U=');
disp(L*U,'LU=');
disp('Here LU=A,from A to U there are subtraction of rows.Frow U to A there are additions of rows');
//end
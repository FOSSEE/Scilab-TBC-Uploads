//page 108
clear;
close;
clc;
A=[4 0 0;0 5 0];
disp(A,'A=');
[m,n]=size(A);
disp(m,'m=');
disp(n,'n=')
r=rank(A);
disp(r,'rank=');
disp('since m=r=2 ,there exists a right inverse .');
C=A'*inv(A*A');
disp(C,'Best right inverse=')
//end
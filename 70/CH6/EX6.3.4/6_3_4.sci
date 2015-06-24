//332
clear;
close;
clc;
A=[1 -2;3 -1];
disp(A,'A=');
[U diag1 V]=svd(A);
Q=U*V';
S=[2 1;1 3];
disp(Q,'Q=');
disp(S,'S=')
disp(S'*Q,'A=S''Q=')
//end

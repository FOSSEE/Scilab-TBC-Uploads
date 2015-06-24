//page 145
clear;
close;
clc;
A=[1 3;2 6;3 9];
disp(A,'A=');
ns=kernel(A);
disp(ns,'Null space=');
disp(A(1,:)*ns,'A(1,:)*ns=');
disp(A(2,:)*ns,'A(2,:)*ns=');
disp(A(3,:)*ns,'A(3,:)*ns=');
disp('This shows that the null space of A is orthogonal to the row space.');
//end

//page 34
clear;
close;
clc;
a=rand(1);
b=rand(1);
c=rand(1);
L=[1 0 0;a 1 0;b c 1];
disp(L,'L=');
U=eye(3,3);
disp(U,'U=');
E=[1 0 0;-a 1 0;0 0 1];
disp(E,'E=');
F=[1 0 0;0 1 0;-b 0 1];
disp(F,'F=');
G=[1 0 0;0 1 0;0 -c 1];
disp(G,'G=');
disp('A=inv(E)*inv(F)*inv(G)*U')
A=inv(E)*inv(F)*inv(G)*U;
disp(A,'A=');
disp('When U is identity matrix then L is same as A');
//end
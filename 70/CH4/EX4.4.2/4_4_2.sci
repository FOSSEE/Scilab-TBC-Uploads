//page 222
clear;
close;
clc;
//x1+3x2=0
//2x1+4x2=6
A=[1 3;2 4];
b=[0;6];
X1=[0 3;6 4];
X2=[1 0;2 6];
disp(det(X1)/det(A),'x1=');
disp(det(X2)/det(A),'x2=');
//end
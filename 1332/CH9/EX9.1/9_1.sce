//Example 9.1
//Moore-Penrose Generalized Inverse
//Page no. 292
clc;clear;close;

AT=[3,0,3;0,3,3];
A=AT';           //transpose
I=inv(AT*A);       //inverse
disp(I,'Inverse of AT*A=',AT*A,'AT*A=',A,'A=',AT,'AT=');
A#=I*AT;
disp(A#,'Moore-Penrose Generalized Inverse of A=')
//Deflation
clc;
clear;
close();
A = [10 -6 -4; -6 11 2; -4 2 6];
P = [1 0 0;-1 1 0;-0.5 0 1];
disp(P,A,'The A and the P(transformation matrix) are : ');
B = inv(P)*A*P;
disp(B,'Hence B = ')
C = B;
C(1,:) = [];
C(:,1) = [];
disp(C,'The deflated matrix : ');
Y = spec(C);
disp(Y,'The matrix A therefore has  eigen values : ');
e1 = [1/3,1,-1/2]';
e2 = [2/3,1,1]';
disp(e1,e2,'The eigen values of B are : ');
x1 = P*e1;
x2 = P*e2;
disp(3/2.*x1,3/2.*x2,'The eigen vextors of the orginal matrix A : ')
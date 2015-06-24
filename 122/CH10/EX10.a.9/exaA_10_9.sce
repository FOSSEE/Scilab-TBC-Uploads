// Example A-10-9
// Transforming to canonical form

clear; clc;
xdel(winsid());  //close all windows
mode(0);

s = %s;
A = [1 1;-4 -3];
B = [0; 2];
C = [1 1];

ch = det(s*eye(2,2) - A)
cf = coeff(ch);
a = cf(1: $-1)


N = obsv_mat(A,C)'
W = [cf(2:$) ; 1 0]
Qi = W*N'
Q = inv(Qi)

A1 = Qi*A*Q
B1 = Qi*B

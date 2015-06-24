// Example 10.9
// Design of quadratic optimal regulator system

clear; clc;
xdel(winsid());  //close all windows
mode(0);

A = [0 1;0 0];
B = [0;1];
Q = [1 0; 0 1];
R = [1];

// solve the riccati equation
P = riccati(A, B*inv(R)*B', Q,'c')
K = inv(R)*B'*P
E = spec(A - B*K) // eigen values


// Example 10-10
// Design of quadratic optimal regulator system

clear; clc;
xdel(winsid());  //close all windows
mode(0);

A = [-1 1;0 2];
B = [1;0];
Q = [1 0; 0 1];
R = [1];

// solve the riccati equation
P = riccati(A, B*inv(R)*B', Q,'c')
K = inv(R)*B'*P
E = spec(A - B*K) // eigen values
// when a solution does not exist
// a different method is used - least square solution
// Example 10-1
// Gain matrix using characteristic eq and Ackermanns formula

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<path to dependencies>";
// exec("ackermann.sci");

A = [0 1 0; 0 0 1;-1 -5 -6];
B = [0; 0; 1];
P = [-2 + %i*4 , -2 - %i*4, -10];

// Method 1
phi = poly(spec(A),'s');
disp(phi,'Given systems characteristic eq = ');
cf = coeff(phi);
a = cf(1:$-1)

phid = poly(P,'s');
disp(phid,'Desired characteristic eq = ');
cf = coeff(phid);
alpha = cf(1:$-1)

T = eye(3,3) // in this case
K = (alpha - a) * inv(T)

// Method 2
[K, phiA] = ackermann(A,B,P);
disp(cont_mat(A,B), ' controllability matrix = ');
disp(phiA,'phi(A) =');
disp(K,'using ackermanns formula K = ');

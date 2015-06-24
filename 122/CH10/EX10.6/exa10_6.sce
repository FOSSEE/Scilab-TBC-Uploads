// Example 10-6
// Observer Gain matrix using ch eq and Ackermanns formula

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<path to dependencies>";
// exec("ackermann.sci");

A = [0 20.6; 1 0];
C = [0 1];
P = [-10 -10];

// Method 1
phi = poly(spec(A),'s');
disp(phi,'Given systems characteristic eq = ');
cf = coeff(phi);
a = cf(1:$-1)'

phid = poly(P,'s');
disp(phid,'Desired characteristic eq = ');
cf = coeff(phid);
alpha = cf(1:$-1)'

T = eye(2,2) // in this case
Ke = inv(T) * (alpha - a) 

// Method 2
[Ke, phiA] = ackermann(A',C',P);
disp(obsv_mat(A,C), 'observability matrix = ');
disp(phiA','phi(A) =');
disp(Ke','using ackermanns formula Ke = ');

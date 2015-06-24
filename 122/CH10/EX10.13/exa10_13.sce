// Example 10-13
// Design of quadratic optimal regulator system

clear; clc;
xdel(winsid());  //close all windows

A = [0 1 0; 0 0 1; 0 -2 -3];
B = [0; 0; 1];
C = [1 0 0];
Q = [100 0 0; 0 1 0; 0 0 1];
R = [0.01];

// solve the riccati equation
P = riccati(A, B*inv(R)*B', Q,'c');
K = inv(R)*B'*P;
disp(K,'K = ');
k1 = K(1);

G = syslin('c',A - B*K, B*k1 , C, [0]);
t = 0:0.01:8; 
u = ones(1,length(t));
[y,x] = csim(u,t,G);
plot(t,x);
xgrid(color('gray'));
xtitle('Step-Response','t (sec)','state variables');
legend('x1 (= y)','x2','x3');


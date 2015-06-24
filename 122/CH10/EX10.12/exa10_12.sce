// Example 10-12
// Design of quadratic optimal regulator system and finding the response

clear; clc;
xdel(winsid());  //close all windows
mode(0);

A = [0 1 0; 0 0 1; -35 -27 -9];
B = [0; 0; 1];
Q = [1 0 0; 0 1 0; 0 0 1];
R = [1];

// solve the riccati equation
P = riccati(A, B*inv(R)*B', Q,'c')
K = inv(R)*B'*P
E = spec(A - B*K) // eigen values

x0 = [1; 0; 0];  // initial state

G = syslin('c',(A - B*K),[0;0;0],[0 0 0],[0], x0);
t = 0:0.01:8;
u = zeros(1,length(t)); 
[y x] = csim(u,t,G);         

xtitle('Response to initial condition','t (sec)','x1');
subplot(3,1,1);xgrid(color('gray'));
plot(t,x(1,:));

subplot(3,1,2);xgrid(color('gray'));
xtitle('','t (sec)','x2');
plot(t,x(2,:));

subplot(3,1,3);xgrid(color('gray'));
xtitle('','t (sec)','x3');
plot(t,x(3,:));


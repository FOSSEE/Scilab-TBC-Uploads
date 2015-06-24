// Example 10-3
// Response to initial condition

clear; clc;
xdel(winsid());  //close all windows

A = [0 1 0; 0 0 1;-1 -5 -6];
B = [0; 0; 1];
C = [0 0 0];
D = 0;
K = [199 55 8];
x0 = [1; 0; 0];  // initial state

G = syslin('c',(A - B*K),C',C,D,x0);
t = 0:0.01:4;
u = zeros(1,length(t));  // zero input response
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

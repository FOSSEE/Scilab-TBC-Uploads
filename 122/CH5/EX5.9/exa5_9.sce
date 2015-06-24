// Example 5-9
// Response to initial conditions using state space approach

clear; clc;
xdel(winsid()); //close all windows

A = [0  1; -10 -5];
x0 = [2; 1];
G = syslin('c',A,x0,[0 0],[0]); //use dummy C and D variables

t = 0:0.01:3;
[y,x] = csim('impuls',t,G);

plot(t, x(1,:), t, x(2,:));
xtitle('Response to initial condition','t Sec','State variables');
xgrid(color('gray'));
legend('x1','x2');
// The State variables x, respond only to A,B matrices
// changning C and D will make no difference.




// Example A-5-16
// Response to initial conditions

clear; clc;
xdel(winsid());  //close all windows

A = [0 1 0; 0 0 1; -10 -17 -8];
C = [1 0 0];
x0 = [2; 1; 0.5];
G = syslin('c',A,[0; 0; 0],C,0,x0);

t = 0:0.05:10;
u = zeros(1,length(t));
y = csim(u,t,G);

plot(t,y);
xgrid(color('gray'));
xtitle('Response to initial condition','t (sec)','output');




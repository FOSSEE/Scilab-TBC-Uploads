// Example 5-8
// Response to initial condition (Transfer Function)

clear; clc;
xdel(winsid()); //close all windows

s = %s;
N = 0.1*s^2 + 0.35*s ;  
D = s^2 + 3*s + 2;
G = syslin('c',N,D);

t = linspace(0,8,200);
u = ones(1,200);
y = csim(u,t,G);

plot(t,y);
xtitle('Response to initial conditions','t Sec','Response');
xgrid(color('gray'));
// We cannot use the 'step' version of csim directly
// as direct feedback sets to zero for the 'step' option
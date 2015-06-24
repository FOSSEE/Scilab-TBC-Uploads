// Example A-5-12
// Response to unit ramp and exponential input

clear; clc;
xdel(winsid());  //close all windows

// Please edit path if needed
// cd "/<your code folder>/"
// exec("plotresp.sci");

s = %s;
G = syslin('c', s + 10, s^3 + 6*s^2 + 9*s + 10);

t = 0:0.05:10;
e = exp(-0.5 * t);
plotresp(t,t,G,'Response to unit ramp input');
scf();
plotresp(e,t,G,'Response to exponential input');

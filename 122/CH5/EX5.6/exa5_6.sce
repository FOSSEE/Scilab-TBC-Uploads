// Example 5-6
// Unit Ramp response of a second order system

clear; clc;
xdel(winsid()); //close all windows

// Please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s
G = syslin('c', 2*s + 1, s^2 + s + 1);

t = 0:0.05:10;
plotresp(t,t,G,'Unit ramp response of G = (2*s + 1) / (s^2 + s + 1)');


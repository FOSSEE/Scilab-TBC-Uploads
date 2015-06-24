// Example 7-8
// Polar Plot of a linear system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("spolarplot.sci");

T = 10; s = %s;
omega = logspace(-1,3,1000);
G = syslin('c',1,s*(T*s + 1));
spolarplot();


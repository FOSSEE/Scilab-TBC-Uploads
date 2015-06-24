// Example 7-1
// Steady state sinusoidal output

clear; clc;
xdel(winsid());  //close all windows

// please set the path
// cd "/<your code directory>/"
// exec("plotresp.sci")

s = %s;
w = 1;
K = 5;
T = 0.1;

G = syslin('c',K,T*s + 1);
t = 0:0.1:20;
u = sin(w*t);
plotresp(u,t,G,'Response to sinusoidal input'); 
// as T*w is small amplitude of output is ~ K (5)
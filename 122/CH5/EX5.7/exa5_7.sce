// Example 5-7
// Response to step and exponential input

clear; clc;
xdel(winsid()); //close all windows

// Please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

t = 0:0.1:16;
A = [-1  0.5; -1  0];
B = [0; 1];
C = [1  0];
D = [0];
G = syslin('c',A,B,C,D);

// unit step response
u = ones(1,length(t));
plotresp(u,t,G,'Unit-Step Response');
scf();
// resposne to exponential input = e^(-t)
u = exp(-t);
plotresp(u,t,G,'Response to exponential input');

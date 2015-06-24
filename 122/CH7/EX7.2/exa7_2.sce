// Example 7-2
// Steady state sinusoidal output lag and lead

clear; clc;
xdel(winsid());  //close all windows

// please set the path
// cd "/<your code directory>/"
// exec("plotresp.sci")

s = %s;
T1 = 1;
T2 = 5;
a = s + 1/T1;
b = s + 1/T2;
w = 1;

G1 = syslin('c',a,b);
G2 = syslin('c',b,a);
t = 0:0.1:50;
u = sin(w*t);
plotresp(u,t,G1,'Response to sinusoidal input');
plotresp(u,t,G2,'Response to sinusoidal input'); 
xstring(17,1.4,'Lead network T1 > T2 : lead network');
xstring(17,-0.8,'Lag network T1 > T2 : lead network');

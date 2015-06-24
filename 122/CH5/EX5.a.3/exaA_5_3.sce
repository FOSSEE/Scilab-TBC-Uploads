// Example A-5-3
// Verifying design to match given response curve

clear; clc;
xdel(winsid());  //close all windows

// Please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
K = 1.42;
T = 1.09;
K = 1.42;
G1 = (K/(s*(T*s + 1)) ) /. 1;
G = syslin('c',G1);

t = 0:0.1:10;
u = ones(1,length(t));
y = plotresp(u,t,G,'Step response');

[m t] = max(y);
Mp = m - 1;
tp = (t - 1) * 0.1;
disp(Mp,'Mp = ');
disp(tp,'tp = ');


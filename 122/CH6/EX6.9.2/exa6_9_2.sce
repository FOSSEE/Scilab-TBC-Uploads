// Example 6-9-2
// Evaluating Lag Lead compensated system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
G = 4 / (s * (s + 0.5));

Gc = 10 * (s + 2.38) * (s + 0.1) / (s + 8.34) / (s + 0.0285);
GGc = G*Gc;

H = syslin('c',G /. 1);
Hc = syslin('c',GGc /. 1);

t = 0:0.05:20;
u1 = ones(1,length(t)); //step response
plotresp(u1,t,H,'');
plotresp(u1,t,Hc,'Unit step response');
xstring(0.5,1.7,'uncompensated system');
xstring(1,0.95,'compensated system');

scf()
t = 0:0.05:10;
plotresp(t,t,H,'');
plotresp(t,t,Hc,'Unit ramp response');
xstring(1.4,0.9,'uncompensated system');
xstring(0,1.5,'compensated system');
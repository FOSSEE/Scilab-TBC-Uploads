// Example 7-26-2
// Evaluating Lag Lead compensated system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
G = 1 / (s * (s + 1) * (s + 2));

Gc = 20 * (s + 0.7) * (s + 0.15) / (s + 7) / (s + 0.015);
GGc = G*Gc;

H = syslin('c',G /. 1);
Hc = syslin('c',GGc /. 1);

t = 0:0.1:30;
u1 = ones(1,length(t)); //step response
u2 = t;                 //ramp response

subplot(2,1,1);plotresp(u1,t,H,'');
plotresp(u1,t,Hc,'Unit step response');
xstring(3,0.8,'uncompensated system');
xstring(0.7,0.6,'compensated system');
subplot(2,1,2);plotresp(u2,t,H,'');
plotresp(u2,t,Hc,'Unit ramp response');
xstring(10,7,'uncompensated system');
xstring(2,0.5,'compensated system');
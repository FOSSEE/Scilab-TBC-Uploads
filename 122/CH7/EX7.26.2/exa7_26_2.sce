// Example 7-26-2
// Evaluating Lead compensated system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
G = 4 / (s * (s + 2));

Kc = 42.104125;
z  = 4.3861167;
p = 18.467361;
Gc = Kc * (s + z)/(s + p);
GGc = G*Gc;

H = syslin('c',G /. 1);
Hc = syslin('c',GGc /. 1);

t = 0:0.05:5;
u1 = ones(1,length(t)); //step response
u2 = t;                 //ramp response

subplot(2,1,1);plotresp(u1,t,H,'');
plotresp(u1,t,Hc,'Unit step response');
xstring(0.65,0.55,'uncompensated system');
xstring(0.1,1.2,'compensated system');
subplot(2,1,2);plotresp(u2,t,H,'');
plotresp(u2,t,Hc,'Unit ramp response');
xstring(3.0,2.0,'uncompensated system');
xstring(0,0.5,'compensated system');
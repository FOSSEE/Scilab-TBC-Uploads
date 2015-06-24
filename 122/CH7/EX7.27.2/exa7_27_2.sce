// Example 7-27-2
// Evaluating Lag compensated system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
G = 1 / (s * (s + 1) * (0.5*s + 1));

Kc = 0.5;
z  = 0.1;
p  = 0.01;
Gc = Kc * (s + z)/(s + p);
GGc = G*Gc;

H = syslin('c',G /. 1);
Hc = syslin('c',GGc /. 1);

t = 0:0.5:40;
u1 = ones(1,length(t)); //step response

subplot(2,1,1);plotresp(u1,t,H,'');
plotresp(u1,t,Hc,'Unit step response');
xstring(2.5,0.55,'uncompensated system');
xstring(0.1,1.3,'compensated system');

t = 0:0.5:30;
u2 = t;                 //ramp response
subplot(2,1,2);plotresp(u2,t,H,'');
plotresp(u2,t,Hc,'Unit ramp response');
xstring(15,13,'uncompensated system');
xstring(14,20,'compensated system');
// Example 6-7-2
// Step and ramp response of lag compensated system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
G = 1.06 / (s * (s + 1) * (s + 2));

Kc = 0.9956;
z  = 0.05;
p  = 0.005;
Gc = Kc * (s + z)/(s + p);
GGc = G*Gc;

H = syslin('c',G /. 1);
Hc = syslin('c',GGc /. 1);

t = 0:0.5:40;
u1 = ones(1,length(t)); //step response

subplot(2,1,1);plotresp(u1,t,H,'');
plotresp(u1,t,Hc,'Unit step response');
xstring(5,0.9,'uncompensated system');
xstring(0.1,1.2,'compensated system');

t = 0:0.5:50;
u2 = t;                 //ramp response
subplot(2,1,2);plotresp(u2,t,H,'');
plotresp(u2,t,Hc,'Unit ramp response');
xstring(18,13,'uncompensated system');
xstring(9,20,'compensated system');
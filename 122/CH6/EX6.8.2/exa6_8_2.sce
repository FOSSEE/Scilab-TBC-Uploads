// Example 6-8-2
// Evaluating Lag Lead compensated system

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s;
G = 4 / (s * (s + 0.5));

Gc = 6.25 * (s + 0.5) * (s + 0.2) / (s + 5) / (s + 0.125);
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
y2 = plotresp(t,t,Hc,'Unit ramp response');a = gca()
delete(a.children(2)); // deleting the drawn graph and redrawing
// with a different colour
plot(t,y2,'r');
legend('ramp input','uncompensated system','compensated system');

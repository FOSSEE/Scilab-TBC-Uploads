// Example 7-22
// Correlating bandwidth and speed of response

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

s = %s /2 /%pi; // frequencies in rad/s
G1 = syslin('c',1,s + 1);
G2 = syslin('c',1,3*s + 1);
subplot(2,1,1);
gainplot(G1,0.1,10);
xtitle('system 1 : 1 / (s + 1)','rad/s');
subplot(2,1,2);
gainplot(G2,0.1,10);
xtitle('system 2 : 1 / (3*s + 1)','rad/s');

scf();
t = 0:0.05:1;
u = ones(1,length(t));
subplot(2,1,1);
plotresp(u,t,G1,'');
plotresp(u,t,G2,'Step response of two systems with different bandwidth');
xstring(0.1,0.75,'System 1');
xstring(0.35,0.4,'System 2');

subplot(2,1,2);
plotresp(t,t,G1,'');
plotresp(t,t,G2,'Ramp response of two systems with different bandwidth');
xstring(0.45,0.35,'System 1');
xstring(0.8,0.45,'System 2');

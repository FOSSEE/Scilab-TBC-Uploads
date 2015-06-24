// Example A-8-6
// PID Design

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<your code directory>";
// exec("plotresp.sci");
// exec("rootl.sci")

s = %s;
G = syslin('c',1,s^2 + 1);
dp = -1 + sqrt(3)*%i;

angdef = 180 - phasemag(horner(G*(s+1)/s,dp)) 
// Determining b
b = 1 + sqrt(3)*cotd(angdef)
Gc1 = (s + 1) * (s + b) / s;
K = 1/ abs(horner(G*Gc1,dp))
Gc = K * Gc1

evans(G*Gc1,50);
xgrid();
a = gca(); 
a.data_bounds = [-5 -3; 1 3];
a.children(1).visible = 'off';
xtitle('Root locus plot of open loop system'); 


C = syslin('c',G*Gc /. 1);
disp(C,'closed loop system =');
scf();
t = 0:0.05:12;
u = ones(1,length(t));
plotresp(u,t,C,'Unit step response of compensated system');
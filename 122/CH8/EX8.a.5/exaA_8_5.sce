// Example A-8-5
// PID design

clear; clc;
xdel(winsid());  //close all windows
mode(0);
// please edit the path
// cd "";
// exec("plotresp.sci");
// exec("stepch.sci");

s = %s;
zeta = 0.5       // dominant pole charecteristics
wn = 4
sigma = zeta*wn;
ts = 4 /(zeta*wn); 
disp(ts,'settling time approximate (ts) =');

D = (s + 10) * (s^2 + 2*zeta*wn*s + wn^2);
cf = coeff(D);

K = cf(1)
a_plus_b  = (cf(2) - 9) / K
ab = (cf(3) - 3.6) / K

Gc = K * (ab * s^2 + a_plus_b *s+ 1) / s
CbyD = syslin('c',s,D)

CbyR = syslin('c',numer(Gc),D)

t = 0:0.05:5;
u = ones(1,length(t));
plotresp(u,t,CbyD,'Response to step disturbance input');
a = gca(); a.data_bounds = [0 ,-4D-3; 5 ,14D-3];
scf();
[Mp ,tp ,tr ,ts] = stepch(CbyR,0,5,0.05,0.02);
disp(Mp,'Max overshoot ='); 
disp(ts,'settling time actual (ts) =');

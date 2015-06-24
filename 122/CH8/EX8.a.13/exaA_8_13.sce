// Example A-8-13
// Design of system with two degrees of freedom

clear; clc;
xdel(winsid());  //close all windows
mode(0);
// please edit the path
// cd "<path to dependencies";
// exec("plotresp.sci");

s = %s;
Gp = 100 /(s*(s + 1))
dp = -5 + %i*5;

// Step 1: Design of Gc1 using root locus approach
angdef = 180 - phasemag(horner(Gp/s,dp))
angdef2 = angdef /2;
disp(angdef2,'each pole must contribute an angle of');

a = 5 + 5*cotd(angdef2)
Gcx = (s + a)^2 / s;
K = 1/ abs(horner(Gcx*Gp, dp) )
Gc1 = K * (s + a)^2 / s

// determining Kp. Ti and Td
cf = coeff(numer(Gc1));
Kp = cf(2)
Ti = Kp / cf(1)
Td = cf(3) / Kp

t = 0:0.01:4;
u = ones(1,length(t)); 
subplot(2,1,1);
YbyD  = syslin('c',Gp / (1 + Gp * Gc1))
plotresp(u,t,YbyD,'Response to step disturbance input');
ax = gca();
ax.data_bounds = [0 0; 3 2];

//Step 2: Design of Gc
Gc = (YbyD.den - s^3) / 100 /  s

YbyR = syslin('c',1 - s^3 / YbyD.den )
subplot(2,1,2);
t = 0:0.01:3;
u = ones(1,length(t)); 
plotresp(u,t,YbyR,'Response to step reference input');
scf();
subplot(2,1,1);
plotresp(t,t,YbyR,'Response to ramp reference input');
subplot(2,1,2);
t = 0:0.01:2;
u = 1/2 * t.^2;
plotresp(u,t,YbyR,'Response to acceleration reference input');


// Example 8-5
// Design of system with two degrees of freedom 2

clear; clc;
xdel(winsid());  //close all windows
mode(0);
// please edit the path
// cd "";
// exec("plotresp.sci");

s = %s;
Gp = 5 / (s+1) / (s+5)
t = 0:0.01:3;
u = ones(1,length(t)); 

// Step 1: Design of Gc1
a = sqrt(13)
K = 4 / (5*a - 15)
Gc1 = K * (s + a)^2 / s

// determining Kp. Ti and Td
cf = coeff(numer(Gc1));
Kp = cf(2)
Ti = Kp / cf(1)
Td = cf(3) / Kp

subplot(2,1,1);
YbyD  = syslin('c',Gp / (1 + Gp * Gc1))
plotresp(u,t,YbyD,'Response to step disturbance input');
a = gca();
a.data_bounds = [0 0; 3 0.1];

//Step 2: Design of Gc2
cf = coeff(YbyD.den);
Kp2 = (cf(2) - 47.63 ) / 5
Td2 = (cf(3) - 6.6051) / 5 / Kp2

Gc2 = Kp2 * ( 1 + Td2*s)

YbyR = syslin('c',1 - s^3 / YbyD.den )
subplot(2,1,2);
t = 0:0.05:2;
u = ones(1,length(t)); 
plotresp(u,t,YbyR,'Response to step reference input');
scf();
subplot(2,1,1);
plotresp(t,t,YbyR,'Response to ramp reference input');
subplot(2,1,2);
u = 1/2 * t.^2;
plotresp(u,t,YbyR,'Response to acceleration reference input');


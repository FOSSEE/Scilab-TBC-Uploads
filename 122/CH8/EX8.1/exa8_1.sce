// Example 8-1
// Tuning a PID controller using Nichols Second Rule
clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd <your code directory>
// exec("plotresp.sci");
// exec("rootl.sci");

s = %s;
G = 1 / ( s * (s + 1) * (s + 5) )

// finding Kcr and wcr (omega cr)
w = poly(0,'w');
D = horner(denom(G),%i * w);
x = roots(imag(D));
wcr = abs(x(2))  // the non zero root
Kcr = -1*clean(horner(D,wcr))
Pcr = 2*%pi / wcr 

Kp = 0.6 * Kcr
Ti = 0.5*Pcr
Td = 0.125*Pcr
Gc = Kp * ( s + 1/Ti + s^2*Td ) / s
GGc = syslin('c',G*Gc);
H = syslin('c',GGc /. 1);
disp(H,'closed loop system =');

rootl(GGc,0,'Root locus of open loop system');
sgrid([0.3],[]);
a = gca(); a.data_bounds = [-7 -4; 2 4];
xstring(-1,1,'zeta = 0.3');

scf();
t = 0:0.1:14;
u = ones(1,length(t));
plotresp(u,t,H,'');
// unacceptably large maximum overshoot

// new system
Kp2 = 39.42
Ti2 = 3.077
Td2 = 0.7692
Gc2 = Kp2 * ( s + 1/Ti2 + s^2*Td2 ) / s
GGc2 = syslin('c',G*Gc2);
H2 = syslin('c',GGc2 /. 1);
disp(H2,'closed loop system2 =');
plotresp(u,t,H2,'Step Response to a PID controlled system');
xstring(1.5,1.65,'System 1');
xstring(0.5,1.3,'System 2');


// Example A-6-17
// Design of lag lead compensator

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");
// exec("plotresp.sci");

s = %s;
G = syslin('c',1 ,s * (s + 1) * (s + 5));

Kv = 50;           // desired velocity constant
disp(horner(s*G,0),'Kv (uncompensated system) = ');

// designing lead part
Kc = Kv /abs(horner(s*G,0))
z1 = 1     //to cancel the pole s = -1 of the plant

_beta = 16.025; disp(_beta,'beta =');
x = 1.9054    // beta and x are found analytically

dp = -x + sqrt(3)*%i*x
R = [-x -x]; I = [imag(dp) -imag(dp)];
p1 = z1 * _beta

Gc1 =Kc * (s + z1)/(s + p1); disp(Gc1,'Lead compensator Gc1 =');

// Lag compensator design
p2 = 0.01  //say
z2 = p2 * _beta
Gc2 = (s + z2)/(s + p2);
disp(Gc2,'Lag compensator Gc2 =');
disp(abs(horner(Gc2,dp)),'magnitude contribution of lag part =');
disp(phasemag(horner(Gc2,dp)),'angle contribution of lag part =');
// these are acceptable

Gc = Gc1 * Gc2
H = G * Gc ;         // compensated system
H = syslin('c',numer(H),denom(H));

subplot(1,2,1);
rootl(G,[-20 -15; 10 15],'Uncompensated system');
plot(R,I,'x');
xgrid(color('gray'));
subplot(1,2,2);
rootl(H,[-20 -15; 10 15],'Compensated system');
plot(R,I,'x');
xgrid(color('gray'));
xstring(R(1),I(1),'Desired closed loop poles');

G1 = syslin('c',G /. 1);      
C = syslin('c',H /. 1);      // final closed loop system
disp(C,'closed loop system =');
disp(roots(C.den),'closed loop poles = ');
disp(horner(s*H,0),'velocity error constant Kv =')

scf();
subplot(2,1,1);
t = 0:0.05:10;
u = ones(1,length(t));
plotresp(u,t,G1,'');
plotresp(u,t,C,'Unit step response');
xstring(1,0.1,'uncompensated system');
xstring(0.7,1.12,'compensated system');

subplot(2,1,2);
plotresp(t,t,G1,'');
plotresp(t,t,C,'Unit ramp response');
xstring(3,0.9,'uncompensated system');
xstring(0.7,2,'compensated system');

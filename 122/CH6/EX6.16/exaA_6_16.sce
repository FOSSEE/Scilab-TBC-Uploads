// Example A-6-16
// Design of lag lead compensator

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");
// exec("plotresp.sci");

s = %s;
G = syslin('c',10,s * (s + 2) * (s + 8));

Kv = 80;           // desired velocity constant
R = [-2 -2];
I = [2*sqrt(3) -2*sqrt(3)];
dp = R(1) + %i*I(1)

disp(horner(s*G,0),'Kv (uncompensated system) = ');

// designing lead part
Kc = Kv /abs(horner(s*G,0))
angdef = 180 - phasemag(horner(G,dp))
z1 = 3.7     //z1 and p1 determinded graphically
p1 = 53.35
T1 = 1 / z1
_beta = T1 * p1; disp(_beta,'beta =');

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
rootl(G,[-10 -10; 10 10],'Uncompensated system');
plot(R,I,'x');
xgrid(color('gray'));
subplot(1,2,2);
rootl(H,[-10 -10; 10 10],'Compensated system');
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
xstring(1,0.5,'uncompensated system');
xstring(0.7,1.12,'compensated system');

subplot(2,1,2);
plotresp(t,t,G1,'');
plotresp(t,t,C,'Unit ramp response');
xstring(2,0.9,'uncompensated system');
xstring(0.5,2,'compensated system');

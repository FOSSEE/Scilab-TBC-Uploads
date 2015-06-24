// Example A-6-15
// Design of lag compensator

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");
// exec("plotresp.sci");

s = %s;
G = syslin('c',10,s * (s + 4));


Kv = 80;           // desired velocity constant
R = [-2 -2];
I = [sqrt(6) -sqrt(6)];
dp = R(1) + %i*I(1)

disp(horner(s*G,0),'Kv (uncompensated system) = ');
_beta = 20;  // taking Kc =1 we get beta as 10
z = 0.1;     // choose z = 0.1
p = z / _beta; 
Gc = (s + z)/(s + p);
disp(Gc ,'compensator = ');
H = G * Gc ;         // compensated system
H = syslin('c',numer(H),denom(H));
Gdp = horner(Gc,dp);
disp(abs(Gdp),'Magnitude contribution of controller =');
disp(phasemag(Gdp),'Angle contribution of controller =');

rootl(G,[-3 -4; 1 4],'');
rootl(H,[-3 -4; 1 4],'Uncompensated and Compensated system');
xgrid(color('gray'));
plot(R,I,'x');
xstring(R(1),I(1),'Original pole on uncompensated sys');

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
xstring(1,0.9,'uncompensated system');
xstring(0.7,1.12,'compensated system');


t = 0:0.5:20;
subplot(2,1,2);
plotresp(t,t,G1,'');
plotresp(t,t,C,'Unit ramp response');
xstring(2,0.9,'uncompensated system');
xstring(0.1,4,'compensated system');

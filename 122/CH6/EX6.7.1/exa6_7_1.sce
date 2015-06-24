// Example 6-7-1
// Design of a lag compensator using root locus


clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
G = syslin('c',1.06 , s*(s+1)*(s+2)); //open loop system
R = [ -0.31 -0.31];
I = [0.55 -0.55];  // desired closed loop poles
dp = R(1) + %i*I(1);
disp(roots(G.den + 1.06),'Closed loop poles (uncompensated)=');
disp(horner(s*G,0),'Kv (uncompensated system = ');

rootl(G,[-3 -2; 1 2],'');
plot(R,I,'x');

// Lag compensator for Kv = 5 sec.

_beta = 10;  // taking beta as 10
z = 0.05;
p = z / _beta; 

Gc = (s + z)/(s + p);
disp(Gc ,'compensator = ');
H = G.num * Gc / G.den  ;         // compensated system
H = syslin('c',numer(H),denom(H));

rootl(H,[-3 -2; 1 2],'Uncompensated and Compensated system');
xgrid(color('gray'));
xstring(R(1),I(1),'New pole on compensated sys');

Kc = abs(1 / horner(H,dp));
disp(Kc,'required controller gain Kc = ');
C = H*Kc /. 1;      // final closed loop system
disp(C,'closed loop system =');
disp(roots(C.den),'closed loop poles = ');
disp(horner(s*H*Kc,0),'velocity error constant Kv =')
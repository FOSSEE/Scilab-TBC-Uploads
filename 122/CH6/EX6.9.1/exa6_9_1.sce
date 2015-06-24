// Example 6-9-1
// Design of a lag lead compensator using root locus 2
// gamma = beta case

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
G = syslin('c',4 , s * (s + 0.5)); //open loop system

Kv = 80;           // desired velocity constant
wn = 5;            // desired natural frequency and damping
_zeta = 0.5;
sigma = -1*wn * _zeta;
wd = wn * sqrt(1 - _zeta^2);
dp = sigma + %i*wd;    // desired closed loop poles
disp(roots(G.den + 4),'Closed loop poles (uncompensated)=');
disp(horner(s*G,0),'Kv (uncompensated system = ');

rootl(G,[-5 -2; 1 2],'Uncompensated system');
xgrid(color('gray'));
plot([sigma sigma],[wd -wd],'x');
xstring(sigma,wd,'Desired CL poles');

// Designing Lead Part
Kc = Kv / horner(s*G,0);      disp(Kc,'Kc = ');
z1 = 2.38;     //z1 and p1 determinded graphically
p1 = 8.34;
T1 = 1 / z1;                  disp(T1,'T1');
_beta = T1 * p1;              disp(_beta,'beta =');

Gc1 =Kc * (s + z1)/(s + p1); disp(Gc1,'Lead compensator Gc1 =');

// Lag compensator design
T2 = 10;  //say
z2 = 1 / T2; p2 = z2 / _beta;
Gc2 = (s + z2)/(s + p2);
disp(Gc2,'Lag compensator Gc2 =');
disp(abs(horner(Gc2,dp)),'magnitude contribution of lag part =');
disp(phasemag(horner(Gc2,dp)),'angle contribution of lag part =');
// these are acceptable

Gc = Gc1*Gc2;
disp(Gc,'final lag lead controller = ');
scf()
rootl(Gc*G,[-5 -2; 1 2],'Compensated system');
xgrid(color('gray'));
plot([sigma sigma],[wd -wd],'x');

C = Gc*G /. 1;
disp(C,'closed loop system =');
disp(roots(C.den),'closed loop poles = ');
disp(horner(s*Gc*G,0),'velocity error constant Kv =')
disp(dp,'desired poles =');
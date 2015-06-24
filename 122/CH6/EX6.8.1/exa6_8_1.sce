// Example 6-8-1
// Design of a lag lead compensator using root locus 1
// zeta ~= gamma (not equal to)

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
[phi1 db] = phasemag(horner(G,dp));
angdef = 180 - phi1;
disp(angdef,'Angle deficiency = ');

z1 = 0.5  //Make the lead compensator zero cancel the system zero
// To determin p1;
// Gc1 = [0.5 +(-2.5 + 4.33j)] / [(p1 -2.5) + 4.33j]
[theta m2] = phasemag(-2.0 + 4.33*%i);
p1 = 2.5 + 4.33*cotd(theta - angdef);  // so that it contributes 'angdef'

Gc1 = (s + z1)/(s + p1);      disp(Gc1,'Lead compensator Gc1 =');
_gamma = p1 / z1;             disp(_gamma,'gamma = ');
Kc = abs(1/horner(G*Gc1,dp)); disp(Kc,'Kc = ');

// Lag compensator design
_beta = Kv * _gamma / Kc / horner(s*G,0); disp(_beta,'beta');

T2 = 5;  //say
z2 = 1 / T2; p2 = z2 / _beta;
Gc2 = (s + z2)/(s + p2);
disp(Gc2,'Lag compensator Gc2 =');
disp(abs(horner(Gc2,dp)),'magnitude contribution of lag part =');
disp(phasemag(horner(Gc2,dp)),'angle contribution of lag part =');
// these are acceptable

Gc = Kc*Gc1*Gc2;
disp(Gc,'final lag lead controller = ');
scf()
rootl(Gc*G,[-5 -2; 1 2],'Compensated system');
xgrid(color('gray'));
plot([sigma sigma],[wd -wd],'x');

C = Gc*G /. 1;
disp(C,'closed loop system =');
disp(roots(C.den),'closed loop poles = ');
disp(horner(s*Gc*G,0),'velocity error constant Kv =')
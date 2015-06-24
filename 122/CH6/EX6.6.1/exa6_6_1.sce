// Example 6-6-1
// Design of a lead compensator using root locus


clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
G = syslin('c',10 , s*(s+1) ); //open loop system

R = [ -1.5 -1.5];
I = [2.5981 -2.5981];  // desired closed loop poles
dp = R(1) + %i*I(1);

rootl(G,[-5 -5; 1 5],'Uncompensated system');
xgrid(color('gray'));
plot(R,I,'x');    // A gain adjustment is not enough as the 
                  // desired poles do not lie on the roor locus

[phi1 db] = phasemag(horner(G,dp));
angdef = 180 - phi1;
disp(angdef,'Angle deficiency = ');

// Lead compensator for Maximum Kv
// here we will find the pole-zero of the compensator
// using the prescirbed method

[phi2 dbi] = phasemag(dp);
angOPA = phi2;
angPOD = 180 - phi2;
angOPD = (angOPA - angdef) / 2;
angOPC = (angOPA + angdef) / 2;

angPDO = (180 - angPOD - angOPD);
angPCO = (180 - angPOD - angOPC);

//using the sine rule of triangles
DO = sind(angOPD) * abs(dp) / sind(angPDO);
CO = sind(angOPC) * abs(dp) / sind(angPCO);

Gc = (s + DO)/(s + CO);
disp(Gc ,'compensator = ');
H = G.num * Gc / G.den  ;         // compensated system
H = syslin('c',numer(H),denom(H));

scf();
rootl(H,[-5 -5; 1 5],'Compensated system');
xgrid(color('gray'));
plot(R,I,'x');

// Final system passes through the desired poles
// required gain for the system
Kc = abs(1 / horner(H,dp));
disp(Kc,'required gain Kc = ');
C = H*Kc /. 1;      // final closed loop system
disp(C,'closed loop system =');
disp(roots(C.den),'closed loop poles = ');
disp(horner(s*H*Kc,0),'velocity error constant Kv =')
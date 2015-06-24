// Example 7-26-1
// Design of Lead compensator with Bode plots

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("shmargins.sci");

s = %s/2/%pi;
G = 4 / (s * (s + 2));
Kv = 20;
K = Kv / horner(s * G,0)

GK = syslin('c',K * G);

[gm, gcrw, pm, pcrw] = shmargins(GK);
// required specification is pm = 50 degrees
phi = 50 - pm + 6  // 6 deg compensation
sn = sind(phi);
alpha = (1 - sn)/(1 + sn)

wc = 9; // new gain crossover freq.
z = wc * sqrt(alpha) // z = 1 / T
p = wc / sqrt(alpha) // p = 1 / (alpha*T)
Kc = K / alpha
disp(Kc * (%s + z)/(%s + p),'Gc = '); 
Gc = Kc * (s + z)/(s + p);
GGc = syslin('c',Gc * G);
scf();
shmargins(GGc);

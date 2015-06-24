// Example 7-28-1
// Design of Lag - lead compensation with Bode plots

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("shmargins.sci");

s = %s /2 /%pi ;
G = 1 / (s * (s + 1) * (s + 2));
Kv = 10;
K = Kv / horner(s * G,0)
GK = syslin('c',K * G);

[gm, gcrw, pm, pcrw] = shmargins(GK);
wc = 1.5; // new gain crossover freq.

// required specification is pm = 50 degrees
phi = 55  // 6 deg compensation
sn = sind(phi);
beta = (1 + sn)/(1 - sn)

z2 = wc /10; // z2 = 1 / T2 :1 decade below our new gain cross freq. 
p2 = z2 / beta;

disp((%s + z2)/(%s + p2),'Gclead = '); 
Gclead = (s + z2)/(s + p2);

z1 = 0.7 ; //corner frequencies are around w = 7 <-> -20db
p1 = 7;
disp((%s + z1)/(%s + p1),'Gclag = '); 
Gclag = (s + z1)/(s + p1);

Gc = K * Gclag * Gclead;
GGc = syslin('c',Gc * G);
scf();
shmargins(GGc);



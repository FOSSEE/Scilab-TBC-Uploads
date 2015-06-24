// Example 7-27-1
// Design of Lag compensator with Bode plots

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("shmargins.sci");

s = %s/2/%pi;
G = 1 / (s * (s + 1) * (0.5*s + 1));
Kv = 5;
K = Kv / horner(s * G,0)

GK = syslin('c',K * G);

[gm, gcrw, pm, pcrw] = shmargins(GK);
// required specification is pm = 40 degrees

wc = 0.5; // new gain crossover freq.
beta = 10
z = 0.1      // z = 1 / T is chosen one octave less
p = z / beta 
Kc = K / beta
disp(Kc * (%s + z)/(%s + p),'Gc = '); 
Gc = Kc * (s + z)/(s + p);
GGc = syslin('c',Gc * G);
scf();
shmargins(GGc);

//Example 7.2.c: emf
clc;
clear;
close;
// given data:
Vt=200;// terminal voltage in volts
Rsh=100; //shunt fieldresistance  in ohm
Ra=0.1; // armature resistance in ohm
l=60; // number of lamps
w=40;// in watt
total_l=l*w;// in watt
Il=total_l/Vt;// load current
Ish=Vt/Rsh;// shunt field current
Ia=Il+Ish;
N=4; // number of poles
I=Ia/N;
Va=Ia*Ra;//armature voltage drop 
Vb=1+1; // brush contact drop for 2 pair of poles
E=Vt+Va+Vb;
disp(E,"emf,E(v) = ")

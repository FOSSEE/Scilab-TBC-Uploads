//Example 7.2.a: total armature current
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
disp(Ia,"armature current,Ia(A) = ")

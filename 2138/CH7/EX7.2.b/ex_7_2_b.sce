//Example 7.2.b: current per armature path
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
disp(I,"current per path in a armature,I(A) = ")

//Example 7.3.b: emf
clc;
clear;
close;
// given data:
W=10;// output of the generator in k-w
V=250; // voltage in volts
R=0.07; // in ohm
Il=(W*1000)/V;// load current in A
Vf=Il*R;// voltage drop in feeder
Vt=V+Vf;// terminal voltage
Rsh=63.2; // shunt resistance in ohm
Ra=0.05; // armature resistance in ohm
Vb=2; // brush contact drop
Ish=Vt/Rsh;
Ia=Il+Ish;
Vd=Ia*Ra;// voltage drop in the armature
E=Vt+Vd+Vb;
disp(E,"emf,E(V) = ")

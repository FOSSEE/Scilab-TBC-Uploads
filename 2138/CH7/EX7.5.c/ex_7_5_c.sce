//Example 7.5.c: e.m.f
clc;
clear;
close;
// given data:
n=3;// number of motors
n1=4;// number of parallel path in winding
i=30; //current in A
I=i*n;// current taken by three motors
Rsh=44; // shunt field resistance
Ra=0.08; // armature resistance in ohm
V=440; // voltage in V
Ish=V/Rsh;// shunt field current
Ia=I+Ish;
I1=Ia/n1;// current in each path
Va=Ia*Ra; // armature drop
Vb=2;// we know , brush contact drops
E=V+Va+Vb;
disp(E,"emf,E(V) = ")
// answer is wrong in a book 

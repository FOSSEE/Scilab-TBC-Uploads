//Example 7.5.b: current in each path
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
disp(I1,"current in each path,I1(A) = ")

//Example 7.5.a: total armature current
clc;
clear;
close;
// given data:
n=3;// number of motors
i=30; //current in A
I=i*n;// current taken by three motors
Rsh=44; // shunt field resistance
V=440; // voltage in V
Ish=V/Rsh;// shunt field current
Ia=I+Ish;
disp(Ia,"total armature current,Ia(A) = ")

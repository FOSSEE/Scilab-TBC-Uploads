//Example 7.3.a: terminal voltage
clc;
clear;
close;
// given data:
W=10;// output of the generator in k-w
V=250; // voltage in volts
R=0.07; // in ohm
Il=(W*1000)/V;// load current in A
Vf=Il*R;// voltage drop in feeder
Vt=V+Vf;
disp(Vt,"terminal voltage,Vt(V) = ")

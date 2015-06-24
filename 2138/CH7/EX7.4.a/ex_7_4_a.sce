//Example 7.4.a: terminal voltage
clc;
clear;
close;
// given data:
W=20000;// in watt
V=200; // in volts
R=0.08; // in ohm
Rs=0.02; // series field resistance in ohm
I=W/V; // in A
Vf=I*R;
Vs=I*Rs;
V1=Vf+Vs; // voltage drop of feeder and series field
Vg=V+V1;
disp(Vg,"terminal voltage,Vg(V) = ")

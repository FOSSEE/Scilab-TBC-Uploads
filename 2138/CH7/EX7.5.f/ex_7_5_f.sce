//Example 7.5.f: stray losses
clc;
clear;
close;
// given data:
n=3;// number of motors
n1=4;// number of parallel path in winding
i=30; //current in A
Bhp=65;// in hp
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
E_power=E*Ia;
W=V*I;// in watt
M_power=Bhp*746;// assume Bhp=746 W
Copper_losses=E_power-W;
S_loses=M_power-E_power;
disp(S_loses,"stray losses(W) = ")

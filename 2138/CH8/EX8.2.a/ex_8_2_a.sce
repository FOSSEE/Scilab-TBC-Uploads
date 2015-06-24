//Example 8.2.a: bhp 
clc;
clear;
close;
//given data :
V=230; // voltage in volts
I=72; // current in A
W=V*I;
s=968; // stray losses
Rsh=115; // shunt field resistance in ohm
Ra=0.5;// armature resistance in ohm
Ish=V/Rsh;// shunt field resistance
Ia=I-Ish;
Eb=V-(Ia*Ra);// back emf in volts
Dpd=Eb*Ia;// driving power developed
Mpo=Dpd-s;
bhp=Mpo/746;
disp(bhp,"bhp = ")

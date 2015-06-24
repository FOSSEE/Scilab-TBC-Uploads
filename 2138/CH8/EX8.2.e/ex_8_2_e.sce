//Example 8.2.e: lost torque
clc;
clear;
close;
//given data :
pi=22/7; 
N=955; // in r.p.m
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
c_losses=W-Dpd;
Ta=(9.55*Eb*Ia)/N;
Tsh=(bhp*60*746)/(2*pi*N);
Tl=Ta-Tsh;
disp(Tl,"lost torque,Tl(N-m) = ")

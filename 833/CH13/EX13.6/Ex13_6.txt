//Caption:Find number of armature conductors in series per phase
//Exa:13.6
clc;
clear;
close;
p=10//Number of poles
ph=3//Number of phases
n=600//Speed of alternator(in r.p.m)
sl=90//Number of slots
Vl=6600//Line voltage(in volts)
B=0.1//Flux per pole(in wb)
cs=160//Coil span(in degrees)
kb=0.9597//Distribution factor
kp=0.9848//Pitch factor
v_ph=Vl/sqrt(3)
f=(p*n)/120
m=sl/(p*ph)
T=2*v_ph/(4.44*kb*kp*B*f)
disp(T,'Number of armature conductors in series per phase=')
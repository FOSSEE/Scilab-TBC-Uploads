//Example  6.2// e.m.f 
clc;
clear;
close;
format('v',6)
//given data :
V=200;//voltage
Ra=0.1;//resistance in ohm
Ia=50;//armature current in Amperes
E=V+(Ia*Ra);//generator voltage in volts
Eb=V-(Ia*Ra);//motor voltage in volts
disp(E,"emf when machine acts as generator,(V) = ")
disp(Eb,"emf when machine acts as motor,(V) = ")

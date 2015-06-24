
//Example 7.4.d: bhp metric of the primemover
clc;
clear;
close;
// given data:
W=20000;// electrical output in watt
V=200; // in volts
R=0.08; // in ohm
Rs=0.02; // series field resistance in ohm
I=W/V; // in A
Rsh=42; // shunt ield resistance in ohm
Ra=0.04; //  armature resistance in ohm
iron_losses=309.5; // iron and friction losses
Vf=I*R;
Vs=I*Rs;
V1=Vf+Vs; // voltage drop of feeder and series field
Vg=V+V1;// terminal voltage
Ish=Vg/Rsh;// shunt field current
Ia=I+Ish;
Vd=Ia*Ra;
emf=Vg+Vd;
Ed=emf*Ia;// in watt
copper_losses=Ed-W;
mech_in=W+copper_losses+iron_losses;// mechanical power inoput
Bhp=mech_in/735.5;
efficiency=(W/mech_in)*100;
disp(efficiency,"efficiency(%) = ")

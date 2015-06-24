// Exa 10.20
clc;
clear;
close;
format('v',7)
// Given data
Pout = 25;// in kW
Pout = Pout*10^3;// in W
Vt = 250;// in V
Ra = 0.06;// in ohm
Rsh = 100;// in ohm
// Pout = Vt*I_L;
I_L = Pout/Vt;// in A
Ish = Vt/Rsh;// in A
Ia = I_L+Ish;// in A
Eg = Vt + (Ia*Ra);// in V
// Total armature power developed when working as a generator 
Pdeveloped = Eg*Ia;// in W
Pdeveloped = Pdeveloped * 10^-3;// in kW
disp(Pdeveloped,"Total armature power developed in kW is");
Ia = I_L-Ish;// in A
Eb = Vt - (Ia*Ra);// in V
// Total armature power developed when working as a motor 
Pdeveloped = Eb*Ia;// in W
Pdeveloped = Pdeveloped * 10^-3;// in kW
disp(Pdeveloped,"Total armature power developed when working as a motor in kW is");

//Power P, Voltage V, Armature resistance Ra, Field Resistance Rf
close();
clear;
clc;
P = 50000;//W
V = 250;
Ra = 0.06;//ohm
Rse = 0.04;
Rf = 125;
Vb = 2;
Il = P/V;
Vf = V + Il*Rse;
If = Vf/Rf;
Ia = Il + If;
E = V+ Ia*Ra +Il*Rse+ Vb;
mprintf('Induced armature voltage E = %0.2f V\nTerminal Voltage V = %0.0f V',E,V);